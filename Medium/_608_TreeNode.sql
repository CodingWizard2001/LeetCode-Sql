-- Table: Tree

-- +-------------+------+
-- | Column Name | Type |
-- +-------------+------+
-- | id          | int  |
-- | p_id        | int  |
-- +-------------+------+

-- id is the column with unique values for this table. Each row of this table contains information about the id of a node and the id of its parent node in a tree. The given structure is always a valid tree.
 

-- Each node in the tree can be one of three types:

-- 1.  "Leaf": if the node is a leaf node.
-- 2.  "Root": if the node is the root of the tree.
-- 3.  "Inner": If the node is neither a leaf node nor a root node.

-- Write a solution to report the type of each node in the tree. Return the result table in any order.





SELECT id,
    CASE WHEN p_id IS NULL THEN 'Root'
    WHEN id IN (SELECT p_id FROM Tree) THEN 'Inner'
    ELSE 'Leaf'
    END AS type
FROM Tree;