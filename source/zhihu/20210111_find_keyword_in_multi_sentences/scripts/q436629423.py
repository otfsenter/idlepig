def get_match_info(source, keyword):
    """
    split content by '.', then find keyword in every element in list.
    the length of list in match list.

    :param source: content
    :param keyword: keyword in each sentence
    """
    chinese_dot_list = source.split('。')
    match_list = []
    for sentence in chinese_dot_list:
        if keyword in sentence:
            ru(sentence + '。')

            match_list.append(sentence)
    ru('there are % sentences' % len(match_list))


def main():
    source = 'Python supports both process-oriented programming and object-oriented programming. ' \
             'In the "object-oriented" language, Programs are built from procedures or functions ' \
             'that are just reusable code. In "object-oriented" languages, programs are composed of data and functions.' \
             ' Compared with other object-oriented languages (such as C++ and Java), Python does not emphasize concepts, ' \
             'And focus on practicality. Let programmers feel the benefits of object-oriented, which is one of the reasons it can attract many supporters.'

    ru('source：')
    ru(source)

    keyword = input("please input keyword(like: Python): ")

    get_match_info(source, keyword)


if __name__ == '__main__':
    main()
