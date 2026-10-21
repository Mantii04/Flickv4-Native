.class public final LK/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:LK/o;

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/String;

.field public static final g:LK/c;

.field public static final h:LK/c;


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:LK/o;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, LK/p;->c:LK/o;

    .line 2
    .line 3
    sput-object v0, LK/c;->d:LK/o;

    .line 4
    .line 5
    const/16 v1, 0x200e

    .line 6
    .line 7
    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    sput-object v1, LK/c;->e:Ljava/lang/String;

    .line 12
    .line 13
    const/16 v1, 0x200f

    .line 14
    .line 15
    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    sput-object v1, LK/c;->f:Ljava/lang/String;

    .line 20
    .line 21
    new-instance v1, LK/c;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v3, 0x2

    .line 25
    invoke-direct {v1, v2, v3, v0}, LK/c;-><init>(ZILK/o;)V

    .line 26
    .line 27
    .line 28
    sput-object v1, LK/c;->g:LK/c;

    .line 29
    .line 30
    new-instance v1, LK/c;

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    invoke-direct {v1, v2, v3, v0}, LK/c;-><init>(ZILK/o;)V

    .line 34
    .line 35
    .line 36
    sput-object v1, LK/c;->h:LK/c;

    .line 37
    .line 38
    return-void
.end method

.method public constructor <init>(ZILK/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, LK/c;->a:Z

    .line 5
    .line 6
    iput p2, p0, LK/c;->b:I

    .line 7
    .line 8
    iput-object p3, p0, LK/c;->c:LK/o;

    .line 9
    .line 10
    return-void
.end method

.method public static a(Ljava/lang/CharSequence;)I
    .locals 9

    .line 1
    new-instance v0, LK/b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, LK/b;-><init>(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    iput p0, v0, LK/b;->c:I

    .line 8
    .line 9
    move v1, p0

    .line 10
    move v2, v1

    .line 11
    move v3, v2

    .line 12
    :cond_0
    :goto_0
    iget v4, v0, LK/b;->c:I

    .line 13
    .line 14
    iget v5, v0, LK/b;->b:I

    .line 15
    .line 16
    const/4 v6, 0x1

    .line 17
    const/4 v7, -0x1

    .line 18
    if-ge v4, v5, :cond_6

    .line 19
    .line 20
    if-nez v1, :cond_6

    .line 21
    .line 22
    iget-object v5, v0, LK/b;->a:Ljava/lang/CharSequence;

    .line 23
    .line 24
    invoke-interface {v5, v4}, Ljava/lang/CharSequence;->charAt(I)C

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    iput-char v4, v0, LK/b;->d:C

    .line 29
    .line 30
    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_1

    .line 35
    .line 36
    iget v4, v0, LK/b;->c:I

    .line 37
    .line 38
    invoke-static {v5, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    iget v5, v0, LK/b;->c:I

    .line 43
    .line 44
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    add-int/2addr v8, v5

    .line 49
    iput v8, v0, LK/b;->c:I

    .line 50
    .line 51
    invoke-static {v4}, Ljava/lang/Character;->getDirectionality(I)B

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    iget v4, v0, LK/b;->c:I

    .line 57
    .line 58
    add-int/2addr v4, v6

    .line 59
    iput v4, v0, LK/b;->c:I

    .line 60
    .line 61
    iget-char v4, v0, LK/b;->d:C

    .line 62
    .line 63
    const/16 v5, 0x700

    .line 64
    .line 65
    if-ge v4, v5, :cond_2

    .line 66
    .line 67
    sget-object v5, LK/b;->e:[B

    .line 68
    .line 69
    aget-byte v4, v5, v4

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    invoke-static {v4}, Ljava/lang/Character;->getDirectionality(C)B

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    :goto_1
    if-eqz v4, :cond_4

    .line 77
    .line 78
    if-eq v4, v6, :cond_3

    .line 79
    .line 80
    const/4 v5, 0x2

    .line 81
    if-eq v4, v5, :cond_3

    .line 82
    .line 83
    const/16 v5, 0x9

    .line 84
    .line 85
    if-eq v4, v5, :cond_0

    .line 86
    .line 87
    packed-switch v4, :pswitch_data_0

    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :pswitch_0
    add-int/lit8 v3, v3, -0x1

    .line 92
    .line 93
    move v2, p0

    .line 94
    goto :goto_0

    .line 95
    :pswitch_1
    add-int/lit8 v3, v3, 0x1

    .line 96
    .line 97
    move v2, v6

    .line 98
    goto :goto_0

    .line 99
    :pswitch_2
    add-int/lit8 v3, v3, 0x1

    .line 100
    .line 101
    move v2, v7

    .line 102
    goto :goto_0

    .line 103
    :cond_3
    if-nez v3, :cond_5

    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_4
    if-nez v3, :cond_5

    .line 107
    .line 108
    goto :goto_5

    .line 109
    :cond_5
    :goto_2
    move v1, v3

    .line 110
    goto :goto_0

    .line 111
    :cond_6
    if-nez v1, :cond_7

    .line 112
    .line 113
    goto :goto_6

    .line 114
    :cond_7
    if-eqz v2, :cond_8

    .line 115
    .line 116
    return v2

    .line 117
    :cond_8
    :goto_3
    iget v2, v0, LK/b;->c:I

    .line 118
    .line 119
    if-lez v2, :cond_a

    .line 120
    .line 121
    invoke-virtual {v0}, LK/b;->a()B

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    packed-switch v2, :pswitch_data_1

    .line 126
    .line 127
    .line 128
    goto :goto_3

    .line 129
    :pswitch_3
    add-int/lit8 v3, v3, 0x1

    .line 130
    .line 131
    goto :goto_3

    .line 132
    :pswitch_4
    if-ne v1, v3, :cond_9

    .line 133
    .line 134
    :goto_4
    return v6

    .line 135
    :cond_9
    add-int/lit8 v3, v3, -0x1

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :pswitch_5
    if-ne v1, v3, :cond_9

    .line 139
    .line 140
    :goto_5
    return v7

    .line 141
    :cond_a
    :goto_6
    return p0

    .line 142
    nop

    .line 143
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public static b(Ljava/lang/CharSequence;)I
    .locals 6

    .line 1
    new-instance v0, LK/b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, LK/b;-><init>(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    iget p0, v0, LK/b;->b:I

    .line 7
    .line 8
    iput p0, v0, LK/b;->c:I

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    move v1, p0

    .line 12
    :goto_0
    move v2, v1

    .line 13
    :cond_0
    :goto_1
    iget v3, v0, LK/b;->c:I

    .line 14
    .line 15
    if-lez v3, :cond_6

    .line 16
    .line 17
    invoke-virtual {v0}, LK/b;->a()B

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_4

    .line 22
    .line 23
    const/4 v4, 0x1

    .line 24
    if-eq v3, v4, :cond_2

    .line 25
    .line 26
    const/4 v5, 0x2

    .line 27
    if-eq v3, v5, :cond_2

    .line 28
    .line 29
    const/16 v5, 0x9

    .line 30
    .line 31
    if-eq v3, v5, :cond_0

    .line 32
    .line 33
    packed-switch v3, :pswitch_data_0

    .line 34
    .line 35
    .line 36
    if-nez v2, :cond_0

    .line 37
    .line 38
    goto :goto_4

    .line 39
    :pswitch_0
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :pswitch_1
    if-ne v2, v1, :cond_1

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :pswitch_2
    if-ne v2, v1, :cond_1

    .line 49
    .line 50
    goto :goto_3

    .line 51
    :cond_2
    if-nez v1, :cond_3

    .line 52
    .line 53
    :goto_2
    return v4

    .line 54
    :cond_3
    if-nez v2, :cond_0

    .line 55
    .line 56
    goto :goto_4

    .line 57
    :cond_4
    if-nez v1, :cond_5

    .line 58
    .line 59
    :goto_3
    const/4 p0, -0x1

    .line 60
    return p0

    .line 61
    :cond_5
    if-nez v2, :cond_0

    .line 62
    .line 63
    :goto_4
    goto :goto_0

    .line 64
    :cond_6
    return p0

    .line 65
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstance()LK/c;
    .locals 1

    .line 1
    new-instance v0, LK/a;

    .line 2
    .line 3
    invoke-direct {v0}, LK/a;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, LK/a;->build()LK/c;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method


# virtual methods
.method public getStereoReset()Z
    .locals 1

    .line 1
    iget v0, p0, LK/c;->b:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .line 20
    iget-object v0, p0, LK/c;->c:LK/o;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, LK/c;->unicodeWrap(Ljava/lang/CharSequence;LK/j;Z)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public unicodeWrap(Ljava/lang/CharSequence;LK/j;Z)Ljava/lang/CharSequence;
    .locals 10

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    check-cast p2, LK/n;

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1, v0}, LK/n;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result p2

    .line 3
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 4
    invoke-virtual {p0}, LK/c;->getStereoReset()Z

    move-result v2

    const-string v3, ""

    sget-object v4, LK/c;->f:Ljava/lang/String;

    const/4 v5, -0x1

    sget-object v6, LK/c;->e:Ljava/lang/String;

    const/4 v7, 0x1

    iget-boolean v8, p0, LK/c;->a:Z

    if-eqz v2, :cond_6

    if-eqz p3, :cond_6

    if-eqz p2, :cond_1

    .line 5
    sget-object v2, LK/p;->b:LK/o;

    goto :goto_0

    :cond_1
    sget-object v2, LK/p;->a:LK/o;

    .line 6
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    invoke-virtual {v2, p1, v1, v9}, LK/n;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v2

    if-nez v8, :cond_3

    if-nez v2, :cond_2

    .line 7
    invoke-static {p1}, LK/c;->a(Ljava/lang/CharSequence;)I

    move-result v9

    if-ne v9, v7, :cond_3

    :cond_2
    move-object v2, v6

    goto :goto_1

    :cond_3
    if-eqz v8, :cond_5

    if-eqz v2, :cond_4

    .line 8
    invoke-static {p1}, LK/c;->a(Ljava/lang/CharSequence;)I

    move-result v2

    if-ne v2, v5, :cond_5

    :cond_4
    move-object v2, v4

    goto :goto_1

    :cond_5
    move-object v2, v3

    .line 9
    :goto_1
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_6
    if-eq p2, v8, :cond_8

    if-eqz p2, :cond_7

    const/16 v2, 0x202b

    goto :goto_2

    :cond_7
    const/16 v2, 0x202a

    .line 10
    :goto_2
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 11
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/16 v2, 0x202c

    .line 12
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_3

    .line 13
    :cond_8
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_3
    if-eqz p3, :cond_e

    if-eqz p2, :cond_9

    .line 14
    sget-object p2, LK/p;->b:LK/o;

    goto :goto_4

    :cond_9
    sget-object p2, LK/p;->a:LK/o;

    .line 15
    :goto_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    invoke-virtual {p2, p1, v1, p3}, LK/n;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result p2

    if-nez v8, :cond_b

    if-nez p2, :cond_a

    .line 16
    invoke-static {p1}, LK/c;->b(Ljava/lang/CharSequence;)I

    move-result p3

    if-ne p3, v7, :cond_b

    :cond_a
    move-object v3, v6

    goto :goto_5

    :cond_b
    if-eqz v8, :cond_d

    if-eqz p2, :cond_c

    .line 17
    invoke-static {p1}, LK/c;->b(Ljava/lang/CharSequence;)I

    move-result p1

    if-ne p1, v5, :cond_d

    :cond_c
    move-object v3, v4

    .line 18
    :cond_d
    :goto_5
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_e
    return-object v0
.end method

.method public unicodeWrap(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 19
    iget-object v0, p0, LK/c;->c:LK/o;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, LK/c;->unicodeWrap(Ljava/lang/String;LK/j;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public unicodeWrap(Ljava/lang/String;LK/j;Z)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, LK/c;->unicodeWrap(Ljava/lang/CharSequence;LK/j;Z)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
