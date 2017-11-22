if __name__ == '__main__':
    record = {}
    for _ in range(int(input())):
        name = input()
        score = float(input())
        if score not in record:
            record[score] = []
        record[score].append(name)
        keys = sorted(record.keys())
    for name in sorted(record[keys[1]]):
        print(name)
