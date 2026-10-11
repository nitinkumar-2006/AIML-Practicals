
regions = ['WA', 'NT', 'SA', 'Q', 'NSW', 'V', 'T']

neighbors = {
    'WA': ['NT', 'SA'],
    'NT': ['WA', 'SA', 'Q'],
    'SA': ['WA', 'NT', 'Q', 'NSW', 'V'],
    'Q': ['NT', 'SA', 'NSW'],
    'NSW': ['Q', 'SA', 'V'],
    'V': ['SA', 'NSW'],
    'T': []
}

colors = ['Red', 'Green', 'Blue']


def is_valid(region, color, assignment):
    for neighbour in neighbors[region]:
        if assignment.get(neighbour) == color:
            return False
    return True


def map_coloring(index, assignment):
    if index == len(regions):
        return True

    region = regions[index]

    for color in colors:
        if is_valid(region, color, assignment):
            assignment[region] = color

            if map_coloring(index + 1, assignment):
                return True

            del assignment[region]

    return False


assignment = {}

if map_coloring(0, assignment):
    for region in regions:
        print(region, ":", assignment[region])
else:
    print("No solution exists")