# Find rectangle

## Instructions

Image is represent as a simple 2D array where every pixel is a 1 or a 0. The image you get is known to have a single
rectangle of 0s on a background of 1s.

Write a function that takes in the image and returns list containing coordinates of top-left and bottom-right pixels
represented as list of internees:

[Challenge.kt](challenge_spec.rb) | [solution](solution.rb)

## Examples

Example 1

```ruby
image = [
    [1, 1, 0, 0, 0, 1],
    [1, 1, 0, 0, 0, 1],
    [1, 1, 1, 1, 1, 1],
    [1, 1, 1, 1, 1, 1]
]

find_rectangle(image)  # [0, 2, 1, 4]

```

Example 2

```ruby
image = [
    [1, 0, 0, 1, 1, 1],
    [1, 0, 0, 1, 1, 1],
    [1, 0, 0, 1, 1, 1]
]

find_rectangle(image)  # [0, 1, 2, 2]

```

Example 3

```ruby
image = [
    [1, 1, 1, 1, 1],
    [1, 1, 1, 0, 0],
    [1, 1, 1, 0, 0],
    [1, 1, 1, 0, 0],
    [1, 1, 1, 0, 0]
]

find_rectangle(image)  # [1, 3, 4, 4]

```