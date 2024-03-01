
# Number fields downloaded from the LMFDB on 23 January 2024.
# Search link: https://www.lmfdb.org/NumberField/?degree=13&rd=1-11.1908080477&showcol=rd
# Query "{'degree': 13, 'rd': {'$gte': 0.99999999995, '$lte': 11.190808047749998}}" returned 22 fields, sorted by degree.

# Each entry in the following data list has the form:
#    [Label, Polynomial, Discriminant, Root discriminant, Galois group, Class group]
# For more details, see the definitions at the bottom of the file.

# To create a list of fields, type "fields = make_data()"


columns = ["label", "coeffs", "disc", "rd", "galois_label", "class_group"]
data = [
["13.1.1325925503633.1", [1, -1, -3, 2, 4, 1, -5, -1, 3, 0, 1, -1, -1, 1], 1325925503633, 8.56054611437, "13T9", []],
["13.1.1346252740661.1", [1, -2, -1, 2, 2, -1, -1, -1, 0, 5, 0, -4, 0, 1], 1346252740661, 8.57057063416, "13T9", []],
["13.1.1452927822421.1", [1, -4, 7, -2, -11, 19, -9, -9, 17, -10, -1, 6, -4, 1], 1452927822421, 8.62099183688, "13T9", []],
["13.1.3518110599125.1", [-1, 2, -4, 2, 1, -5, 4, -4, -1, 1, -2, 1, 0, 1], 3518110599125, 9.22785432352, "13T9", []],
["13.1.4082190012125.1", [1, -3, 2, 2, -1, -2, -1, 2, 2, 0, 1, -2, -1, 1], 4082190012125, 9.33401960871, "13T9", []],
["13.3.5570916369223.1", [1, -1, 5, -7, 5, -5, -2, 6, -5, 5, -4, 1, -1, 1], -5570916369223, 9.55995604118, "13T9", []],
["13.3.5717814639679.1", [-1, 0, 2, -4, -3, 8, 4, -6, -7, 3, 7, -3, -2, 1], -5717814639679, 9.5791150674, "13T9", []],
["13.3.6855574490939.1", [-1, -4, -6, -6, -6, -7, -8, -1, 1, -3, 2, 2, -1, 1], -6855574490939, 9.71377386112, "13T9", []],
["13.3.7805208559959.1", [1, 0, -1, -3, -2, 5, 1, -1, -5, 7, -6, 6, -4, 1], -7805208559959, 9.81119450388, "13T9", []],
["13.3.9197165262683.1", [1, 0, 0, 7, -10, 9, -3, -3, -1, 2, -2, 0, 0, 1], -9197165262683, 9.93583002049, "13T9", []],
["13.1.10905397816000.1", [1, -1, 5, -6, 8, -6, 1, 6, -12, 15, -12, 8, -3, 1], 10905397816000, 10.0668941223, "13T9", []],
["13.1.12359517706496.1", [1, 0, -2, 4, -3, -1, 6, -7, 5, 0, -4, 5, -3, 1], 12359517706496, 10.1642898312, "13T9", []],
["13.3.14047799762079.1", [-1, -1, 3, -2, 3, -5, 4, -4, 4, -3, 2, 0, -2, 1], -14047799762079, 10.2648943838, "13T9", []],
["13.3.18597951501632.1", [1, 1, -4, -4, 4, 0, -4, 7, 3, -6, 1, 1, -2, 1], -18597951501632, 10.4888550911, "13T9", []],
["13.3.21982001088443.1", [-1, 3, -9, 15, -19, 15, -5, -6, 10, -8, 3, 1, -1, 1], -21982001088443, 10.6246067266, "13T9", []],
["13.3.21990353102339.1", [-1, 4, -4, 0, 2, -7, 9, -4, 1, 3, -5, 4, -2, 1], -21990353102339, 10.624917195, "13T9", []],
["13.1.24777340928000.1", [-1, 4, -1, 4, 4, -3, 8, -6, 1, 2, -5, 4, -2, 1], 24777340928000, 10.7228912075, "13T9", []],
["13.5.28261626739249.1", [-1, 1, 6, -11, 1, 18, -20, 2, 14, -13, 3, 3, -3, 1], 28261626739249, 10.8319706242, "13T9", []],
["13.5.28318356165577.1", [-1, 0, 4, 4, -3, -10, -4, 6, 9, 2, -4, -3, 0, 1], 28318356165577, 10.8336416122, "13T9", []],
["13.1.29747917088000.1", [-2, 8, -16, 24, -31, 38, -43, 44, -40, 30, -20, 10, -4, 1], 29747917088000, 10.8747613641, "13T9", []],
["13.3.34372007159104.1", [-1, -4, 0, 0, -2, 0, 7, 5, -8, 1, 5, -2, -1, 1], -34372007159104, 10.9962987482, "13T9", []],
["13.1.36713824791125.1", [-1, 4, -8, 12, -9, 4, 0, 0, -1, 0, 1, 0, -1, 1], 36713824791125, 11.0521923112, "13T9", []]
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


