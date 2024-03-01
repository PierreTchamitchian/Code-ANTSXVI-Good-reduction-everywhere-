
# Number fields downloaded from the LMFDB on 23 January 2024.
# Search link: https://www.lmfdb.org/NumberField/?degree=15&rd=1-11.1908080477&showcol=rd
# Query "{'degree': 15, 'rd': {'$gte': 0.99999999995, '$lte': 11.190808047749998}}" returned 8 fields, sorted by degree.

# Each entry in the following data list has the form:
#    [Label, Polynomial, Discriminant, Root discriminant, Galois group, Class group]
# For more details, see the definitions at the bottom of the file.

# To create a list of fields, type "fields = make_data()"


columns = ["label", "coeffs", "disc", "rd", "galois_label", "class_group"]
data = [
["15.1.723352547563839.1", [1, 1, 1, -2, 5, -4, -5, 4, -5, 5, 2, -2, 2, -2, -1, 1], -723352547563839, 9.78640837431, "15T104", []],
["15.3.1788527348449625.1", [-1, 6, -16, 30, -44, 48, -44, 33, -23, 18, -15, 13, -9, 4, -2, 1], 1788527348449625, 10.3952045383, "15T24", []],
["15.3.2164169497031757.1", [1, -4, 9, -21, 39, -57, 69, -72, 55, -14, -32, 54, -45, 23, -7, 1], 2164169497031757, 10.5281666665, "15T104", []],
["15.3.2354315214908549.1", [-1, 2, -1, 2, 0, 0, -1, -2, 2, -2, 3, -1, -1, 1, -1, 1], 2354315214908549, 10.5874402875, "15T104", []],
["15.3.2432060458605625.1", [-1, -4, -1, 5, 5, -3, -2, 4, 3, -4, -4, 2, 1, -2, -1, 1], 2432060458605625, 10.6103967712, "15T46", []],
["15.3.3276367268581097.1", [1, 4, 1, -14, -15, 15, 31, 4, -24, -20, 8, 16, -1, -6, 0, 1], 3276367268581097, 10.8232952365, "15T104", []],
["15.1.3703260525677583.1", [-1, -3, -3, -5, -4, 3, -3, 6, 2, -3, 4, -5, -1, 1, -2, 1], -3703260525677583, 10.912031669, "15T104", []],
["15.3.4864965285308625.1", [-1, 5, -11, 16, -15, 18, -21, 31, -28, 24, -17, 14, -12, 6, -3, 1], 4864965285308625, 11.1123347675, "15T24", []]
]

ZZx.<x> = ZZ[]


def create_record(row):
    out = {col: val for col, val in zip(columns, row)}
    poly = ZZx(out["coeffs"])
    out["poly"] = poly
    field.<a> = NumberField(poly)
    out["field"] = field
    return out

def make_data():
    return [create_record(row) for row in data]


# Label --
#    Each (global) number field has a unique label of the form d.r.D.i where
#    <ul>
#    <li>\(d\) is the degree;
#    <li>\(r\) is the real signature;  the full signature is therefore \([r,(d-r)/2]\);
#    <li>\(D\) is the absolute value of the discriminant;
#    <li>\(i\) is the index, counting from 1.  This is in case there is more than one
#      field with the same signature and absolute value of the
#      discriminant: for example <a href="/NumberField/4.0.1008.1">4.0.1008.1</a> and <a href="/NumberField/4.0.1008.2">4.0.1008.2</a>.
#    </ul>
#    The discriminant portion of the label can take the form \(a_1\) e \(\epsilon_1\) _ \(a_2\) e \(\epsilon_2\) _ \(\cdots\) _ \(a_k\) e \(\epsilon_k\) to mean the absolute value of the
#    discriminant equals \(a_1^{\epsilon_1}a_2^{\epsilon_2}\cdots a_k^{\epsilon_k}\).  The separators are the letter e and the underscore symbol.


#Polynomial (coeffs) --
#    A **defining polynomial** of a number field $K$ is an irreducible polynomial $f\in\Q[x]$ such that $K\cong \mathbb{Q}(a)$, where $a$ is a root of $f(x)$. Equivalently, it is a polynomial $f\in \Q[x]$ such that $K \cong \Q[x]/(f)$.

#    A root \(a \in K\) of the defining polynomial is a generator of \(K\).

#    {# original author: john.jones #}


#Root discriminant (rd) --
#    If $K$ is a number field of degree $n$ and discriminant $D$, then the **root discriminant** of $K$ is
#    \[ \textrm{rd}(K) = |D|^{1/n}.\]
#    It gives a measure of the discriminant of a number field which is normalized for the degree.  For example, if $K\subseteq L$ are number fields and $L/K$ is unramified, then $\textrm{rd}(K)=\textrm{rd}(L)$.


#Galois group (galois_label) --
#    Let $K$ be a finite degree $n$ separable extension of a field $F$, and $K^{gal}$ be its
#    Galois (or normal) closure.
#    The **Galois group** for $K/F$ is the automorphism group $\Aut(K^{gal}/F)$.

#    This automorphism group acts on the $n$ embeddings $K\hookrightarrow K^{gal}$ via composition.  As a result, we get an injection $\Aut(K^{gal}/F)\hookrightarrow S_n$, which is well-defined up to the labelling of the $n$ embeddings, which corresponds to being well-defined up to conjugation in $S_n$.

#    We use the notation $\Gal(K/F)$ for $\Aut(K/F)$ when $K=K^{gal}$.

#    There is a naming convention for Galois groups up to degree $47$.





#Class group (class_group) --
#    The **ideal class group** of a number field $K$ with ring of integers $O_K$ is the group of equivalence classes of ideals, given by the quotient of the multiplicative group of all fractional ideals of $O_K$ by the subgroup of principal fractional ideals.

#    Since $K$ is a number field, the ideal class group of $K$ is a finite abelian group, and so has the structure of a product of cyclic groups encoded by a finite list $[a_1,\dots,a_n]$, where the $a_i$ are positive integers with $a_i\mid a_{i+1}$ for $1\le i<n$.


