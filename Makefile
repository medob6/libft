SRC	=	ft_atoi.c	ft_isascii.c	ft_memcmp.c	ft_strchr.c	ft_strlen.c	ft_strtrim.c	ft_bzero.c	ft_isdigit.c	ft_memcpy.c	ft_strdup.c	ft_strmapi.c	ft_substr.c	ft_calloc.c	ft_isprint.c	ft_memmove.c	ft_strjoin.c	ft_strncmp.c	ft_tolower.c	ft_isalnum.c	ft_itoa.c	ft_memset.c	ft_strlcat.c	ft_strnstr.c	ft_toupper.c	ft_isalpha.c	ft_memchr.c	ft_split.c	ft_strlcpy.c	ft_strrchr.c ft_striteri.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c

BONUS_SRC = ft_lstadd_back_bonus.c ft_lstadd_front_bonus.c ft_lstclear_bonus.c ft_lstdelone_bonus.c ft_lstiter_bonus.c ft_lstlast_bonus.c ft_lstmap_bonus.c ft_lstnew_bonus.c ft_lstsize_bonus.c

BONUS_OBJ := $(BONUS_SRC:%.c=%.o)

OBJS :=	$(SRC:%.c=%.o)

OBJ_ALL := $(OBJS) $(BONUS_OBJ)

FLAGS	=	-Wall	-Werror	-Wextra

NAME = libft.a

all: $(NAME)

$(NAME): $(OBJS)
	ar	rcs	$(NAME)	$(OBJS)

bonus: $(OBJ_ALL)
	ar rcs $(NAME) $(OBJ_ALL)

%.o: %.c
	cc	-I.	$(FLAGS) -c	$<
clean:
	rm	-f	$(OBJ_ALL)

fclean:	clean
	rm	-rf	$(NAME)

re:	fclean	all
