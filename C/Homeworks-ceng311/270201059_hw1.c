#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// Ceren Çağlayan - 270201059 80/100
typedef struct dynamic_array
{

    int capacity;
    int size;
    void **elements;
} dynamic_array;

void init_array(dynamic_array *array)
{
    array->capacity = 2;
    array->size = 0;
    array->elements = (void **)malloc(array->capacity * sizeof(void *));
    array->elements[0] = NULL;
    array->elements[1] = NULL;
}

void put_element(dynamic_array *array, void *element)
{

    for (int i = 0; i < array->capacity; i++)
    {

        if (array->elements[i])
        {
            continue;
        }
        else
        {
            array->elements[i] = element;
            array->size++;
            break;
        }
    }

    if (array->size == array->capacity)
    {

        int new_capacity = (int)((array->capacity) * 2);

        void **new_elements = (void **)malloc(new_capacity * sizeof(void *));

        for (int i = 0; i < new_capacity; i++)
        {
            new_elements[i] = NULL;
        };

        for (int q = 0; q < array->capacity; q++)
        {

            if (array->elements[q])
            {
                new_elements[q] = array->elements[q];
            }
        };

        array->capacity = new_capacity;

        array->elements = new_elements;
    }
}

void remove_element(dynamic_array *array, int position)
{

    array->elements[position] = NULL;
    array->size--;

    if (array->size < (array->capacity / 2))
    {
        int new_capacity = (int)((array->capacity) / 2);

        void **new_elements = (void **)malloc(new_capacity * sizeof(void *));

        for (int i = 0; i < new_capacity; i++)
        {
            new_elements[i] = NULL;
        };

        for (int q = 0; q < array->capacity; q++)
        {

            if (array->elements[q])
            {
                new_elements[q] = array->elements[q];
            }
        };

        array->capacity = new_capacity;

        array->elements = new_elements;
    }
}

void *get_element(dynamic_array *array, int position)
{
    return array->elements[position];
}

typedef struct song
{
    char *name;
    float duration;
} song;

int main()
{
    struct dynamic_array *da;
    struct dynamic_array daf;
    da = &daf;
    init_array(da);

    char st[] = "\n WELCOME! Please enter number : \n 1- ADD SONG \n 2- REMOVE SONG \n 3- LIST SONG \n 4- QUIT \n";

    while (1)
    {
        printf("%s", st);
        int i;
        scanf("%d", &i);
        switch (i)
        {
        case 1:
            float dur;
            char *str = malloc(sizeof(char) * 64);

            printf("Enter the name \n ");
            scanf("%s", str);
            printf("Enter the duration \n ");
            scanf("%f", &dur);

            song *myptr = (song *)malloc(sizeof(song));

            myptr->duration = dur;
            myptr->name = str;

            put_element(da, myptr);

            break;

        case 2:
            char *str_del;
            printf("Enter the name of the song that you want to delete : \n ");
            scanf("%s", str_del);
            for (int i = 0; i < da->capacity; i++)
            {
                if (get_element(da, i))
                {
                    song *song_ptr = get_element(da, i);
                    if (!strcasecmp(song_ptr->name, str_del))
                    {

                        free(song_ptr);
                        song_ptr = NULL;
                        remove_element(da, i);
                        break;
                    }
                }
            }

            break;
        case 3:
            for (int i = 0; i < da->capacity; i++)
            {
                if (get_element(da, i))
                {
                    song *song_ptr = get_element(da, i);
                    printf("\n %d- \n Name : %s  \n Duration: %f \n", i + 1, song_ptr->name, song_ptr->duration);
                }
            }
            break;
        case 4:
            exit(0);
            break;
        default:
            printf("\n Please Enter valid option \n");
            break;
        }
    }
}
