from search import*
from mc import MissionariesandCannibals

def main():
     problem_mc = MissionariesandCannibals((3,3,'STANGA',0,0), (0,0,'DREAPTA',3,3))
     print(breadth_first_tree_search(problem_mc).solution(), '\n')

if __name__ == "__main__":
    main()