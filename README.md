<div align="center">

# 🧩 Finite Element Analysis of Mindlin Plates in MATLAB

**Mindlin-Reissner plate bending with 4-node quadrilateral (Q4) elements**

![MATLAB](https://img.shields.io/badge/MATLAB-0076A8?logo=mathworks&logoColor=white)
![Topic](https://img.shields.io/badge/topic-plate%20finite%20elements-blueviolet)
![Status](https://img.shields.io/badge/status-archive-lightgrey)

[About](#-about) · [Contents](#-contents) · [Method](#-method) · [How to run](#-how-to-run) · [Credits](#-credits-and-references) · [Contact](#-contact)

</div>

---

## 📌 About

This project contains a MATLAB implementation of the **Finite Element Method for the bending of Mindlin plates**, using **4-node quadrilateral (Q4) elements**. It was developed in the first semester of 2019 (**2019.1**) as part of my **Master's in Mechanical Engineering at UNICAMP** (University of Campinas, Brazil).

The code covers the full finite element workflow: mesh generation, element matrices, assembly, boundary conditions, solution of the system and error evaluation. It is meant as **study material** on plate finite elements.

## 📂 Contents

### ▶️ Main script

| File | Description |
|---|---|
| [`main_ferreira_19.m`](main_ferreira_19.m) | Main script that runs the whole analysis |

### 🕸️ Mesh

| File | Description |
|---|---|
| [`rectangularMesh.p`](rectangularMesh.p) | Generates a structured rectangular mesh of Q4 elements |
| [`drawingMesh.p`](drawingMesh.p) | Plots the mesh |

### 🔩 Element formulation

| File | Description |
|---|---|
| [`shapeFunctionQ4.m`](shapeFunctionQ4.m) | Shape functions and derivatives of the 4-node element |
| [`Jacobian.m`](Jacobian.m) | Jacobian of the isoparametric mapping |
| [`gaussQuadrature.m`](gaussQuadrature.m) | Gauss points and weights for numerical integration |
| [`formStiffnessMatrixMindlinQ4.m`](formStiffnessMatrixMindlinQ4.m) | Stiffness matrix of the Mindlin Q4 element |
| [`formForceVectorMindlinQ4.m`](formForceVectorMindlinQ4.m) | Force vector of the Mindlin Q4 element |

### 🧮 Solution and post-processing

| File | Description |
|---|---|
| [`EssentialBC.m`](EssentialBC.m) | Application of the essential (displacement) boundary conditions |
| [`solution.m`](solution.m) | Solution of the system of equations |
| [`erro_relativo.m`](erro_relativo.m) | Relative error of the results (*erro relativo* is Portuguese for relative error) |

## 🧠 Method

The **Mindlin-Reissner plate theory** (first-order shear deformation theory) includes the effect of **transverse shear deformation**, so it is valid for both thin and moderately thick plates. The rotations of the cross-section are independent of the deflection, which gives three degrees of freedom per node: the deflection and two rotations.

The element is the **4-node isoparametric quadrilateral (Q4)**. The matrices are computed by **Gauss quadrature** over the element, assembled into the global system, and solved after applying the essential boundary conditions.

<!--
## 🖼️ Results
Add the mesh, the deflection field and the convergence plot here. Save the images in an images/ folder, for example:

| Mesh | Deflection | Error convergence |
|:---:|:---:|:---:|
| ![Mesh](images/mesh.png) | ![Deflection](images/deflection.png) | ![Error](images/error.png) |
-->

## 🚀 How to run

**Requirements:** MATLAB.

```matlab
% 1. Download this folder and open it in MATLAB
%    (keep all the files together, including the .p files)
% 2. Run the main script from the Command Window:
main_ferreira_19
```

You can also open `main_ferreira_19.m` in the MATLAB editor and click **Run**.

> ℹ️ The `.p` files are MATLAB *protected* files (pre-parsed code). They run normally, but their content cannot be read or edited.

<!-- Describe the inputs (plate dimensions, thickness, material, load, mesh size, boundary conditions) and the outputs here -->

## 📚 Credits and references

The structure of the code and the function names follow the style of the Q4 plate codes in the book below, which is a great resource for learning finite elements in MATLAB:

- Ferreira, A. J. M. (2009). *MATLAB Codes for Finite Element Analysis: Solids and Structures*. Springer.

Other useful references on Mindlin plate elements:

- Reddy, J. N. (2004). *Mechanics of Laminated Composite Plates and Shells: Theory and Analysis*, 2nd ed. CRC Press.
- Hughes, T. J. R. (2000). *The Finite Element Method: Linear Static and Dynamic Finite Element Analysis*. Dover.

## 🔗 Related projects

- [AnalyticalPlateSolution](https://github.com/PortelaRenan/AnalyticalPlateSolution): Navier and Lévy analytical solutions for plates in MATLAB
- [fem-python-lab](https://github.com/RenanMP12/fem-python-lab): FEM and numerical methods scripts in Python

## 📬 Contact

**Renan Portela**, PhD in Mechanical Engineering (University of Waterloo, Canada) · Master's in Mechanical Engineering (UNICAMP)

[![LinkedIn](https://img.shields.io/badge/LinkedIn-0A66C2?logo=linkedin&logoColor=white)](https://www.linkedin.com/in/YOUR-PROFILE)
[![Email](https://img.shields.io/badge/E--mail-D14836?logo=gmail&logoColor=white)](mailto:YOUR-EMAIL@example.com)

---

<div align="center">

⭐ If this project helped you, leave a star!

</div>
