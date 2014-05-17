#xor
print ("xor")
t_s           = [((1, 1, 1), 0), ((1, 0, 1), 1), ((1, 1, 0), 1), ((1, 1, 1), 0)] 


threshold     = 0.5
learning_rate = 0.1
w             = [0, 0, 0]

def dot_product(values, weights):
    return sum(value * weight for value, weight in zip(values, weights))

def train_perceptron(threshold, learning_rate, weights, training_set):
    while True:
        #print('-' * 60)
        error_count = 0

        for input_vector, desired_output in training_set:
            #print(weights)
            result = dot_product(input_vector, weights) > threshold
            error  = desired_output - result

            if error != 0:
                error_count += 1
                for index, value in enumerate(input_vector):
                    weights[index] += learning_rate * error * value

        if error_count == 0: #iterate till there's no error 
            break
    return training_set

t_s = train_perceptron(threshold, learning_rate, w, t_s)

t_s = [(a[1:], b) for a, b in t_s]

for a, b in t_s:
    print "input: " + str(a) + ", output: " + str(b)

print w