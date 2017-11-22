import string


def print_rangoli(size):
    height = 2 * size - 1
    word = string.ascii_lowercase[:size][::-1]
    for _ in range(height):
        i = min(_, height - _ - 1)
        print('-' * (height - 2 * i - 1) +
              '-'.join(list(word[:i] + word[i] + word[:i][::-1])) + '-' *
              (height - 2 * i - 1))


if __name__ == '__main__':
    n = int(input())
    print_rangoli(n)
