# Safari SQL Dataset

## MVP
The names of the animals in a given enclosure
```sql
SELECT
    name
FROM
    animal
WHERE
    enclosureId = 1;
```

The names of the staff working in a given enclosure
```sql
SELECT
    *
FROM
    staff
    INNER JOIN assignment ON assignment.employeeId = staff.id
WHERE
    assignment.enclosureId = 1;
```

## Extension
The names of staff working in enclosures which are closed for maintenance
```

```
The name of the enclosure where the oldest animal lives. If there are two animals who are the same age choose the first one alphabetically.
```

```
The number of different animal types a given keeper has been assigned to work with.
```

```
The number of different keepers who have been assigned to work in a given enclosure
```

```

The names of the other animals sharing an enclosure with a given animal (eg. find the names of all the animals sharing the big cat field with Tony)
```

```
