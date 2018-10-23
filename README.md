# Graphing Numeric Integration

### Left Riemann Sum:
```
>> integrate(@(x) x.^2,0,5,20,'left')
ans = 38.594

```

### Right Riemann Sum:
```
>> integrate(@(x) x.^2,0,5,20,'right')
ans = 44.844
```

### Midpoint Rule:
```
>> integrate(@(x) sin(x),-1,5,20,'mid')
ans = 0.25761
```

### Trapezoidal Rule:
```
>> integrate(@(x) sin(x),-1,5,10,'trap')
ans = 0.24889
```

### Simpson's Rule:
```
>> integrate(@(x) x.^2,-6,6,10,'simp')
ans = 144.00
```
