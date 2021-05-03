from search import Problem

def is_valid(state):
	cannibalLeft, missionaryLeft, boat, cannibalRight, missionaryRight = state
    # condiție pentru ca canibalii să depășească numărul misionarilor:
    # - dacă numărul canibalilor este strict mai mare decât numărul misionarilor de pe o bancă
    # - numărul misionarilor nu trebuie să fie zero ... fără misionari
    # ==> fără amenințări față de ei dacă un număr de canibali este prezent pe acea bancă
	if (cannibalLeft > missionaryLeft and missionaryLeft != 0) or (cannibalRight > missionaryRight and missionaryRight != 0) :
		return False
	return True

class MissionariesandCannibals(Problem):
    def result(self, state, action):
        """The result of going to a neighbor is just that neighbor."""
        return action

    def value(self, state):
        pass

    def __init__(self, initial, goal):
        self.goal = goal
        self.initial = initial
        self.visited_states = []
        Problem.__init__(self, self.initial, self.goal)

    def __repr__(self):
        return "< State (%s, %s) >" % (self.initial, self.goal)

    def goal_test(self, state):
        return state == self.goal

    def actions(self, cur_state):
        actions = []

        self.visited_states.append(cur_state)
        if cur_state[2] == 'STANGA':

            # muta 1c si 1m spre malul drept
            new_state = (cur_state[0]-1, cur_state[1]-1, 'DREAPTA', cur_state[3]+1, cur_state[4]+1)
            if is_valid(new_state):
                actions.append(new_state)

            # muta 2c spre malul drept
            new_state = (cur_state[0]-2, cur_state[1], 'DREAPTA', cur_state[3]+2, cur_state[4])
            if is_valid(new_state):
                actions.append(new_state)

            # muta 1c spre malul drept
            new_state = (cur_state[0]-1, cur_state[1], 'DREAPTA', cur_state[3]+1, cur_state[4])
            if is_valid(new_state):
                actions.append(new_state)

			# muta 2m spre malul drept
            new_state = (cur_state[0], cur_state[1]-2, 'DREAPTA', cur_state[3], cur_state[4]+2)
            if is_valid(new_state):
                actions.append(new_state)

            # muta 1m spre malul drept
            new_state = (cur_state[0], cur_state[1]-1, 'DREAPTA', cur_state[3], cur_state[4]+1)
            if is_valid(new_state):
                actions.append(new_state)
        else:
           # muta 1c si 1m  spre malul stang
            new_state = (cur_state[0]+1, cur_state[1]+1, 'STANGA', cur_state[3]-1, cur_state[4]-1)
            if is_valid(new_state):
                actions.append(new_state)

            # muta 2c spre malul stang
            new_state = (cur_state[0]+2, cur_state[1], 'STANGA', cur_state[3]-2, cur_state[4])
            if is_valid(new_state):
                actions.append(new_state)

            # muta 1c spre malul stang
            new_state = (cur_state[0]+1, cur_state[1], 'STANGA', cur_state[3]-1, cur_state[4])
            if is_valid(new_state):
                actions.append(new_state)

			# muta 2m spre malul stang
            new_state = (cur_state[0], cur_state[1]+2, 'STANGA', cur_state[3], cur_state[4]-2)
            if is_valid(new_state):
                actions.append(new_state)

            # muta 1m spre malul stang
            new_state = (cur_state[0], cur_state[1]+1, 'STANGA', cur_state[3], cur_state[4]-1)
            if is_valid(new_state):
                actions.append(new_state)

        return actions