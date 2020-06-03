def prime_numbers(m):
    # 素数を保持するset
    primes = set()

    # 2以上m以下の素数を数え上げる
    n = 2
    while n <= m:
        # 自身より小さい全ての素数で割り切れなければ、素数とみなせる
        if all(n % i != 0 for i in primes):
            primes.add(n)
        n += 1

    return primes