# Graphing Numeric Integration

### Left Riemann Sum:
```
>> integrate(@(x) x.^2,0,5,20,'left')
ans = 38.594

```
![Image of Left Sum](/Graph Pictures/left.JPG)

### Right Riemann Sum:
```
>> integrate(@(x) x.^2,0,5,20,'right')
ans = 44.844
```
<img src="/Graph Pictures/right.JPG">

### Midpoint Rule:
```
>> integrate(@(x) sin(x),-1,5,20,'mid')
ans = 0.25761
```
<img src="/Graphing-Numeric-Integration/Graph Pictures/midsin.JPG">

### Trapezoidal Rule:
```
>> integrate(@(x) sin(x),-1,5,10,'trap')
ans = 0.24889
```
<img src="/Graphing-Numeric-Integration/Graph Pictures/trapsin.JPG">

### Simpson's Rule:
```
>> integrate(@(x) x.^2,-6,6,10,'simp')
ans = 144.00
```
<img src="/Graphing-Numeric-Integration/Graph Pictures/simpx^2.JPG">
