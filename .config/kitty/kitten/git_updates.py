import os
from pathlib import Path
import subprocess
import sys

def find_git_repos(base_dir):
    """Rekursiv nach Git-Repositories suchen."""
    return [str(repo.parent) for repo in Path(base_dir).rglob(".git")]

def check_updates(repo_path):
    """Prüfen, ob Updates im Git-Repository vorhanden sind."""
    try:
        subprocess.run(["git", "fetch"], cwd=repo_path, check=True, stdout=subprocess.DEVNULL)
        status = subprocess.run(["git", "status", "-uno"], cwd=repo_path, capture_output=True, text=True)
        if "Your branch is behind" in status.stdout:
            return True
        return False
    except subprocess.CalledProcessError:
        return False

def main(args):
    """Main function to check up"""
    base_dir = args[0] if args else str(Path.home())
    repos = find_git_repos(base_dir)

    if not repos:
        print(f"Keine Git-Repositories in {base_dir} gefunden.")
        return

    print(f"Prüfe {len(repos)} Repositories in {base_dir}...\n")
    for repo in repos:
        if check_updates(repo):
            print(f"🔄 Updates verfügbar: {repo}")
        else:
            print(f"✅ Kein Update: {repo}")

if __name__ == "__main__":
    main(sys.argv[1:])
