# count_even_odd.py

def count_even_odd(numbers):
    even_count = 0
    odd_count = 0

    for number in numbers:
        if number % 2 == 0:
            even_count += 1
        else:
            odd_count += 1
    
    return even_count, odd_count

if __name__ == "__main__":
    numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    even_count, odd_count = count_even_odd(numbers)
    print(f"Even numbers: {even_count}")
    print(f"Odd numbers: {odd_count}")

