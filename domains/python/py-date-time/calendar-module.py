from datetime import date

MM, DD, YYYY = map(int, input().split())
print(['MONDAY', 'TUESDAY', 'WEDNESDAY', 'THURSDAY', 'FRIDAY',
       'SATURDAY', 'SUNDAY'][date(YYYY, MM, DD).weekday()])
