import pandas as pd
import numpy as np
from scipy.stats import norm


def test_direction_of_first_PC(student_answer):
    atol = 10 # set tolerance of numpy.isclose value checking in units of answer (degrees)
    
    # regenerate data
    num_data = 5
    X = norm.rvs(size=(num_data,2), random_state=4)*2
    X = np.dot(X, np.linalg.cholesky([[1, 0.8], [0.8, 0.8]]))
    m = X.mean(axis=0)
    X = X - m

    # calc direction of first eigenvalue
    _, b = np.linalg.eig(np.cov(X.T));
    answer = np.arctan(b[1,0]/b[0,0])*(180/np.pi)
    
    student_answer = np.mod(student_answer, 180)
    
    if np.isclose(student_answer, answer, atol=atol):
        print("Tests Passed")
    else:
        print("Not quite. Try to pick an angle that is close to the 'best fit line' for the data.")
    