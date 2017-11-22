for _ in range(int(input())):
    try:
        x, y = map(int, input().split())
        print(x // y)
    except ValueError as e:
        print("Error Code: " + str(e))
    except ZeroDivisionError as e:
        print("Error Code: " + str(e))
