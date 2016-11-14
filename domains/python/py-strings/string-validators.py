s = input()
for e in ['isalnum','isalpha','isdigit','islower','isupper']: print(any(getattr(c, e)() for c in s))