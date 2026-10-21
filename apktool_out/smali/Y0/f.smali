.class public final LY0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS0/s;


# static fields
.field public static final b:Ljava/util/regex/Pattern;

.field public static final c:Ljava/util/regex/Pattern;

.field public static final d:Ljava/util/regex/Pattern;

.field public static final e:Ljava/util/regex/Pattern;

.field public static final f:Ljava/util/regex/Pattern;

.field public static final g:Ljava/util/regex/Pattern;

.field public static final h:Ljava/util/regex/Pattern;

.field public static final i:LY0/d;


# instance fields
.field public final a:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, LY0/f;->b:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    const-string v0, "^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$"

    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, LY0/f;->c:Ljava/util/regex/Pattern;

    .line 16
    .line 17
    const-string v0, "^(([0-9]*.)?[0-9]+)(px|em|%)$"

    .line 18
    .line 19
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, LY0/f;->d:Ljava/util/regex/Pattern;

    .line 24
    .line 25
    const-string v0, "^([-+]?\\d+\\.?\\d*?)%$"

    .line 26
    .line 27
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, LY0/f;->e:Ljava/util/regex/Pattern;

    .line 32
    .line 33
    const-string v0, "^([-+]?\\d+\\.?\\d*?)% ([-+]?\\d+\\.?\\d*?)%$"

    .line 34
    .line 35
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, LY0/f;->f:Ljava/util/regex/Pattern;

    .line 40
    .line 41
    const-string v0, "^([-+]?\\d+\\.?\\d*?)px ([-+]?\\d+\\.?\\d*?)px$"

    .line 42
    .line 43
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sput-object v0, LY0/f;->g:Ljava/util/regex/Pattern;

    .line 48
    .line 49
    const-string v0, "^(\\d+) (\\d+)$"

    .line 50
    .line 51
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, LY0/f;->h:Ljava/util/regex/Pattern;

    .line 56
    .line 57
    new-instance v0, LY0/d;

    .line 58
    .line 59
    const/high16 v1, 0x41f00000    # 30.0f

    .line 60
    .line 61
    const/4 v2, 0x1

    .line 62
    invoke-direct {v0, v1, v2, v2}, LY0/d;-><init>(FII)V

    .line 63
    .line 64
    .line 65
    sput-object v0, LY0/f;->i:LY0/d;

    .line 66
    .line 67
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, LY0/f;->a:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    move-exception v0

    .line 16
    new-instance v1, Ljava/lang/RuntimeException;

    .line 17
    .line 18
    const-string v2, "Couldn\'t create XmlPullParserFactory instance"

    .line 19
    .line 20
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    throw v1
.end method

.method public static a(LY0/i;)LY0/i;
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    new-instance p0, LY0/i;

    .line 4
    .line 5
    invoke-direct {p0}, LY0/i;-><init>()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-object p0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "tt"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const-string v0, "head"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    const-string v0, "body"

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    const-string v0, "div"

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    const-string v0, "p"

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    const-string v0, "span"

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    const-string v0, "br"

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_1

    .line 56
    .line 57
    const-string v0, "style"

    .line 58
    .line 59
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_1

    .line 64
    .line 65
    const-string v0, "styling"

    .line 66
    .line 67
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_1

    .line 72
    .line 73
    const-string v0, "layout"

    .line 74
    .line 75
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_1

    .line 80
    .line 81
    const-string v0, "region"

    .line 82
    .line 83
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-nez v0, :cond_1

    .line 88
    .line 89
    const-string v0, "metadata"

    .line 90
    .line 91
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-nez v0, :cond_1

    .line 96
    .line 97
    const-string v0, "image"

    .line 98
    .line 99
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-nez v0, :cond_1

    .line 104
    .line 105
    const-string v0, "data"

    .line 106
    .line 107
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-nez v0, :cond_1

    .line 112
    .line 113
    const-string v0, "information"

    .line 114
    .line 115
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result p0

    .line 119
    if-eqz p0, :cond_0

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_0
    const/4 p0, 0x0

    .line 123
    return p0

    .line 124
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 125
    return p0
.end method

.method public static c(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 7

    .line 1
    const-string v0, "http://www.w3.org/ns/ttml#parameter"

    .line 2
    .line 3
    const-string v1, "cellResolution"

    .line 4
    .line 5
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/16 v0, 0xf

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    sget-object v1, LY0/f;->h:Ljava/util/regex/Pattern;

    .line 15
    .line 16
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const-string v3, "Ignoring malformed cell resolution: "

    .line 25
    .line 26
    const-string v4, "TtmlParser"

    .line 27
    .line 28
    if-nez v2, :cond_1

    .line 29
    .line 30
    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-static {v4, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return v0

    .line 38
    :cond_1
    const/4 v2, 0x1

    .line 39
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-static {v5}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    check-cast v5, Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    const/4 v6, 0x2

    .line 54
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-static {v1}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v5, :cond_2

    .line 69
    .line 70
    if-eqz v1, :cond_2

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    const/4 v2, 0x0

    .line 74
    :goto_0
    const-string v6, "Invalid cell resolution %s %s"

    .line 75
    .line 76
    invoke-static {v2, v6, v5, v1}, LP3/v;->checkArgument(ZLjava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    .line 79
    return v1

    .line 80
    :catch_0
    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-static {v4, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    return v0
.end method

.method public static d(Ljava/lang/String;LY0/i;)V
    .locals 7

    .line 1
    const-string v0, "\\s+"

    .line 2
    .line 3
    invoke-static {p0, v0}, Landroidx/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x2

    .line 9
    sget-object v3, LY0/f;->d:Ljava/util/regex/Pattern;

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    if-ne v1, v4, :cond_0

    .line 13
    .line 14
    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    array-length v1, v0

    .line 20
    if-ne v1, v2, :cond_5

    .line 21
    .line 22
    aget-object v0, v0, v4

    .line 23
    .line 24
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "TtmlParser"

    .line 29
    .line 30
    const-string v3, "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first."

    .line 31
    .line 32
    invoke-static {v1, v3}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const-string v3, "\'."

    .line 40
    .line 41
    if-eqz v1, :cond_4

    .line 42
    .line 43
    const/4 p0, 0x3

    .line 44
    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {v1}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    const/4 v5, -0x1

    .line 58
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    sparse-switch v6, :sswitch_data_0

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :sswitch_0
    const-string v6, "px"

    .line 67
    .line 68
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    if-nez v6, :cond_1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    move v5, v2

    .line 76
    goto :goto_1

    .line 77
    :sswitch_1
    const-string v6, "em"

    .line 78
    .line 79
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    if-nez v6, :cond_2

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    move v5, v4

    .line 87
    goto :goto_1

    .line 88
    :sswitch_2
    const-string v6, "%"

    .line 89
    .line 90
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    if-nez v6, :cond_3

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_3
    const/4 v5, 0x0

    .line 98
    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 99
    .line 100
    .line 101
    new-instance p0, Landroidx/media3/extractor/text/SubtitleDecoderException;

    .line 102
    .line 103
    const-string p1, "Invalid unit for fontSize: \'"

    .line 104
    .line 105
    invoke-static {p1, v1, v3}, LA/i;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-direct {p0, p1}, Landroidx/media3/extractor/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw p0

    .line 113
    :pswitch_0
    invoke-virtual {p1, v4}, LY0/i;->setFontSizeUnit(I)LY0/i;

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :pswitch_1
    invoke-virtual {p1, v2}, LY0/i;->setFontSizeUnit(I)LY0/i;

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :pswitch_2
    invoke-virtual {p1, p0}, LY0/i;->setFontSizeUnit(I)LY0/i;

    .line 122
    .line 123
    .line 124
    :goto_2
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    invoke-static {p0}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    check-cast p0, Ljava/lang/String;

    .line 133
    .line 134
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 135
    .line 136
    .line 137
    move-result p0

    .line 138
    invoke-virtual {p1, p0}, LY0/i;->setFontSize(F)LY0/i;

    .line 139
    .line 140
    .line 141
    return-void

    .line 142
    :cond_4
    new-instance p1, Landroidx/media3/extractor/text/SubtitleDecoderException;

    .line 143
    .line 144
    const-string v0, "Invalid expression for fontSize: \'"

    .line 145
    .line 146
    invoke-static {v0, p0, v3}, LA/i;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    invoke-direct {p1, p0}, Landroidx/media3/extractor/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw p1

    .line 154
    :cond_5
    new-instance p0, Landroidx/media3/extractor/text/SubtitleDecoderException;

    .line 155
    .line 156
    new-instance p1, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    const-string v1, "Invalid number of entries for fontSize: "

    .line 159
    .line 160
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    array-length v0, v0

    .line 164
    const-string v1, "."

    .line 165
    .line 166
    invoke-static {p1, v0, v1}, LA/i;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-direct {p0, p1}, Landroidx/media3/extractor/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    throw p0

    .line 174
    nop

    .line 175
    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_2
        0xca8 -> :sswitch_1
        0xe08 -> :sswitch_0
    .end sparse-switch

    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static e(Lorg/xmlpull/v1/XmlPullParser;)LY0/d;
    .locals 7

    .line 1
    const-string v0, "http://www.w3.org/ns/ttml#parameter"

    .line 2
    .line 3
    const-string v1, "frameRate"

    .line 4
    .line 5
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/16 v1, 0x1e

    .line 17
    .line 18
    :goto_0
    const-string v2, "frameRateMultiplier"

    .line 19
    .line 20
    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    const-string v3, " "

    .line 27
    .line 28
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    array-length v3, v2

    .line 33
    const/4 v4, 0x2

    .line 34
    const/4 v5, 0x0

    .line 35
    const/4 v6, 0x1

    .line 36
    if-ne v3, v4, :cond_1

    .line 37
    .line 38
    move v3, v6

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move v3, v5

    .line 41
    :goto_1
    const-string v4, "frameRateMultiplier doesn\'t have 2 parts"

    .line 42
    .line 43
    invoke-static {v3, v4}, LP3/v;->checkArgument(ZLjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    aget-object v3, v2, v5

    .line 47
    .line 48
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    int-to-float v3, v3

    .line 53
    aget-object v2, v2, v6

    .line 54
    .line 55
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    int-to-float v2, v2

    .line 60
    div-float/2addr v3, v2

    .line 61
    goto :goto_2

    .line 62
    :cond_2
    const/high16 v3, 0x3f800000    # 1.0f

    .line 63
    .line 64
    :goto_2
    sget-object v2, LY0/f;->i:LY0/d;

    .line 65
    .line 66
    iget v4, v2, LY0/d;->b:I

    .line 67
    .line 68
    const-string v5, "subFrameRate"

    .line 69
    .line 70
    invoke-interface {p0, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    if-eqz v5, :cond_3

    .line 75
    .line 76
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    :cond_3
    const-string v5, "tickRate"

    .line 81
    .line 82
    invoke-interface {p0, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    if-eqz p0, :cond_4

    .line 87
    .line 88
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    goto :goto_3

    .line 93
    :cond_4
    iget p0, v2, LY0/d;->c:I

    .line 94
    .line 95
    :goto_3
    new-instance v0, LY0/d;

    .line 96
    .line 97
    int-to-float v1, v1

    .line 98
    mul-float/2addr v1, v3

    .line 99
    invoke-direct {v0, v1, v4, p0}, LY0/d;-><init>(FII)V

    .line 100
    .line 101
    .line 102
    return-object v0
.end method

.method public static f(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;ILY0/e;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x1

    .line 10
    :goto_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 11
    .line 12
    .line 13
    const-string v6, "style"

    .line 14
    .line 15
    invoke-static {v0, v6}, Landroidx/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v7

    .line 19
    if-eqz v7, :cond_5

    .line 20
    .line 21
    invoke-static {v0, v6}, Landroidx/media3/common/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    new-instance v7, LY0/i;

    .line 26
    .line 27
    invoke-direct {v7}, LY0/i;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v7}, LY0/f;->h(Lorg/xmlpull/v1/XmlPullParser;LY0/i;)LY0/i;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    if-eqz v6, :cond_1

    .line 35
    .line 36
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result v8

    .line 44
    if-eqz v8, :cond_0

    .line 45
    .line 46
    new-array v6, v4, [Ljava/lang/String;

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_0
    const-string v8, "\\s+"

    .line 50
    .line 51
    invoke-static {v6, v8}, Landroidx/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    :goto_1
    array-length v8, v6

    .line 56
    move v9, v4

    .line 57
    :goto_2
    if-ge v9, v8, :cond_1

    .line 58
    .line 59
    aget-object v10, v6, v9

    .line 60
    .line 61
    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v10

    .line 65
    check-cast v10, LY0/i;

    .line 66
    .line 67
    invoke-virtual {v7, v10}, LY0/i;->chain(LY0/i;)LY0/i;

    .line 68
    .line 69
    .line 70
    add-int/2addr v9, v5

    .line 71
    goto :goto_2

    .line 72
    :cond_1
    invoke-virtual {v7}, LY0/i;->getId()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    if-eqz v6, :cond_2

    .line 77
    .line 78
    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    :cond_2
    move/from16 v7, p2

    .line 82
    .line 83
    :cond_3
    move-object/from16 v6, p4

    .line 84
    .line 85
    :cond_4
    :goto_3
    move-object/from16 v11, p5

    .line 86
    .line 87
    goto/16 :goto_11

    .line 88
    .line 89
    :cond_5
    const-string v7, "region"

    .line 90
    .line 91
    invoke-static {v0, v7}, Landroidx/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    const-string v8, "id"

    .line 96
    .line 97
    if-eqz v7, :cond_18

    .line 98
    .line 99
    invoke-static {v0, v8}, Landroidx/media3/common/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v10

    .line 103
    if-nez v10, :cond_6

    .line 104
    .line 105
    :goto_4
    move/from16 v7, p2

    .line 106
    .line 107
    const/4 v9, 0x0

    .line 108
    goto/16 :goto_f

    .line 109
    .line 110
    :cond_6
    const-string v8, "origin"

    .line 111
    .line 112
    invoke-static {v0, v8}, Landroidx/media3/common/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v8

    .line 116
    if-nez v8, :cond_7

    .line 117
    .line 118
    invoke-static {v0, v6}, Landroidx/media3/common/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v9

    .line 122
    if-eqz v9, :cond_7

    .line 123
    .line 124
    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v9

    .line 128
    check-cast v9, LY0/i;

    .line 129
    .line 130
    if-eqz v9, :cond_7

    .line 131
    .line 132
    invoke-virtual {v9}, LY0/i;->getOrigin()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v8

    .line 136
    :cond_7
    const-string v9, "Ignoring region with missing tts:extent: "

    .line 137
    .line 138
    sget-object v11, LY0/f;->g:Ljava/util/regex/Pattern;

    .line 139
    .line 140
    sget-object v12, LY0/f;->f:Ljava/util/regex/Pattern;

    .line 141
    .line 142
    const/high16 v13, 0x42c80000    # 100.0f

    .line 143
    .line 144
    const-string v14, "TtmlParser"

    .line 145
    .line 146
    if-eqz v8, :cond_b

    .line 147
    .line 148
    invoke-virtual {v12, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 149
    .line 150
    .line 151
    move-result-object v15

    .line 152
    invoke-virtual {v11, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->matches()Z

    .line 157
    .line 158
    .line 159
    move-result v16

    .line 160
    const-string v7, "Ignoring region with malformed origin: "

    .line 161
    .line 162
    if-eqz v16, :cond_8

    .line 163
    .line 164
    :try_start_0
    invoke-virtual {v15, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    invoke-static {v4}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    check-cast v4, Ljava/lang/String;

    .line 173
    .line 174
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 175
    .line 176
    .line 177
    move-result v4

    .line 178
    div-float/2addr v4, v13

    .line 179
    invoke-virtual {v15, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v15

    .line 183
    invoke-static {v15}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v15

    .line 187
    check-cast v15, Ljava/lang/String;

    .line 188
    .line 189
    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 190
    .line 191
    .line 192
    move-result v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    div-float/2addr v7, v13

    .line 194
    move/from16 v16, v13

    .line 195
    .line 196
    goto :goto_5

    .line 197
    :catch_0
    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    invoke-static {v14, v4}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    goto :goto_4

    .line 205
    :cond_8
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    .line 206
    .line 207
    .line 208
    move-result v15

    .line 209
    if-eqz v15, :cond_a

    .line 210
    .line 211
    if-nez v2, :cond_9

    .line 212
    .line 213
    invoke-virtual {v9, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    invoke-static {v14, v4}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    goto :goto_4

    .line 221
    :cond_9
    :try_start_1
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v15

    .line 225
    invoke-static {v15}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v15

    .line 229
    check-cast v15, Ljava/lang/String;

    .line 230
    .line 231
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 232
    .line 233
    .line 234
    move-result v15

    .line 235
    invoke-virtual {v4, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v4

    .line 239
    invoke-static {v4}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v4

    .line 243
    check-cast v4, Ljava/lang/String;

    .line 244
    .line 245
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 246
    .line 247
    .line 248
    move-result v4

    .line 249
    int-to-float v15, v15

    .line 250
    move/from16 v16, v13

    .line 251
    .line 252
    iget v13, v2, LY0/e;->a:I

    .line 253
    .line 254
    int-to-float v13, v13

    .line 255
    div-float v13, v15, v13

    .line 256
    .line 257
    int-to-float v4, v4

    .line 258
    iget v7, v2, LY0/e;->b:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 259
    .line 260
    int-to-float v7, v7

    .line 261
    div-float v7, v4, v7

    .line 262
    .line 263
    move v4, v13

    .line 264
    goto :goto_5

    .line 265
    :catch_1
    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v4

    .line 269
    invoke-static {v14, v4}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    goto/16 :goto_4

    .line 273
    .line 274
    :cond_a
    const-string v4, "Ignoring region with unsupported origin: "

    .line 275
    .line 276
    invoke-virtual {v4, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v4

    .line 280
    invoke-static {v14, v4}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    goto/16 :goto_4

    .line 284
    .line 285
    :cond_b
    move/from16 v16, v13

    .line 286
    .line 287
    const/4 v4, 0x0

    .line 288
    move v7, v4

    .line 289
    :goto_5
    const-string v13, "extent"

    .line 290
    .line 291
    invoke-static {v0, v13}, Landroidx/media3/common/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v13

    .line 295
    if-nez v13, :cond_c

    .line 296
    .line 297
    invoke-static {v0, v6}, Landroidx/media3/common/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v6

    .line 301
    if-eqz v6, :cond_c

    .line 302
    .line 303
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v6

    .line 307
    check-cast v6, LY0/i;

    .line 308
    .line 309
    if-eqz v6, :cond_c

    .line 310
    .line 311
    invoke-virtual {v6}, LY0/i;->getExtent()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v13

    .line 315
    :cond_c
    const/high16 v6, 0x3f800000    # 1.0f

    .line 316
    .line 317
    if-eqz v13, :cond_10

    .line 318
    .line 319
    invoke-virtual {v12, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 320
    .line 321
    .line 322
    move-result-object v12

    .line 323
    invoke-virtual {v11, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 324
    .line 325
    .line 326
    move-result-object v11

    .line 327
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    .line 328
    .line 329
    .line 330
    move-result v13

    .line 331
    const-string v15, "Ignoring region with malformed extent: "

    .line 332
    .line 333
    if-eqz v13, :cond_d

    .line 334
    .line 335
    :try_start_2
    invoke-virtual {v12, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v9

    .line 339
    invoke-static {v9}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object v9

    .line 343
    check-cast v9, Ljava/lang/String;

    .line 344
    .line 345
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 346
    .line 347
    .line 348
    move-result v9

    .line 349
    div-float v9, v9, v16

    .line 350
    .line 351
    invoke-virtual {v12, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v11

    .line 355
    invoke-static {v11}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object v11

    .line 359
    check-cast v11, Ljava/lang/String;

    .line 360
    .line 361
    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 362
    .line 363
    .line 364
    move-result v8
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 365
    div-float v8, v8, v16

    .line 366
    .line 367
    goto :goto_6

    .line 368
    :catch_2
    invoke-static {v15, v8, v14}, LA/i;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    goto/16 :goto_4

    .line 372
    .line 373
    :cond_d
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    .line 374
    .line 375
    .line 376
    move-result v12

    .line 377
    if-eqz v12, :cond_f

    .line 378
    .line 379
    if-nez v2, :cond_e

    .line 380
    .line 381
    invoke-static {v9, v8, v14}, LA/i;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    goto/16 :goto_4

    .line 385
    .line 386
    :cond_e
    :try_start_3
    invoke-virtual {v11, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v9

    .line 390
    invoke-static {v9}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    move-result-object v9

    .line 394
    check-cast v9, Ljava/lang/String;

    .line 395
    .line 396
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 397
    .line 398
    .line 399
    move-result v9

    .line 400
    invoke-virtual {v11, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v11

    .line 404
    invoke-static {v11}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    move-result-object v11

    .line 408
    check-cast v11, Ljava/lang/String;

    .line 409
    .line 410
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 411
    .line 412
    .line 413
    move-result v11

    .line 414
    int-to-float v9, v9

    .line 415
    iget v12, v2, LY0/e;->a:I

    .line 416
    .line 417
    int-to-float v12, v12

    .line 418
    div-float/2addr v9, v12

    .line 419
    int-to-float v11, v11

    .line 420
    iget v8, v2, LY0/e;->b:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    .line 421
    .line 422
    int-to-float v8, v8

    .line 423
    div-float v8, v11, v8

    .line 424
    .line 425
    :goto_6
    move/from16 v16, v8

    .line 426
    .line 427
    move v15, v9

    .line 428
    goto :goto_7

    .line 429
    :cond_f
    const-string v4, "Ignoring region with unsupported extent: "

    .line 430
    .line 431
    invoke-static {v4, v8, v14}, LA/i;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    goto/16 :goto_4

    .line 435
    .line 436
    :cond_10
    move v15, v6

    .line 437
    move/from16 v16, v15

    .line 438
    .line 439
    :goto_7
    const-string v8, "displayAlign"

    .line 440
    .line 441
    invoke-static {v0, v8}, Landroidx/media3/common/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v8

    .line 445
    if-eqz v8, :cond_13

    .line 446
    .line 447
    invoke-static {v8}, LP3/a;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v8

    .line 451
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 452
    .line 453
    .line 454
    const-string v9, "center"

    .line 455
    .line 456
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 457
    .line 458
    .line 459
    move-result v9

    .line 460
    if-nez v9, :cond_12

    .line 461
    .line 462
    const-string v9, "after"

    .line 463
    .line 464
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 465
    .line 466
    .line 467
    move-result v8

    .line 468
    if-nez v8, :cond_11

    .line 469
    .line 470
    goto :goto_a

    .line 471
    :cond_11
    add-float v7, v7, v16

    .line 472
    .line 473
    move v14, v3

    .line 474
    :goto_8
    move v12, v7

    .line 475
    :goto_9
    move/from16 v7, p2

    .line 476
    .line 477
    goto :goto_b

    .line 478
    :cond_12
    const/high16 v8, 0x40000000    # 2.0f

    .line 479
    .line 480
    div-float v8, v16, v8

    .line 481
    .line 482
    add-float/2addr v7, v8

    .line 483
    move v14, v5

    .line 484
    goto :goto_8

    .line 485
    :cond_13
    :goto_a
    move v12, v7

    .line 486
    const/4 v14, 0x0

    .line 487
    goto :goto_9

    .line 488
    :goto_b
    int-to-float v8, v7

    .line 489
    div-float v18, v6, v8

    .line 490
    .line 491
    const-string v6, "writingMode"

    .line 492
    .line 493
    invoke-static {v0, v6}, Landroidx/media3/common/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v6

    .line 497
    if-eqz v6, :cond_17

    .line 498
    .line 499
    invoke-static {v6}, LP3/a;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v6

    .line 503
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 504
    .line 505
    .line 506
    const/4 v8, -0x1

    .line 507
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 508
    .line 509
    .line 510
    move-result v9

    .line 511
    sparse-switch v9, :sswitch_data_0

    .line 512
    .line 513
    .line 514
    goto :goto_c

    .line 515
    :sswitch_0
    const-string v9, "tbrl"

    .line 516
    .line 517
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 518
    .line 519
    .line 520
    move-result v6

    .line 521
    if-nez v6, :cond_14

    .line 522
    .line 523
    goto :goto_c

    .line 524
    :cond_14
    move v8, v3

    .line 525
    goto :goto_c

    .line 526
    :sswitch_1
    const-string v9, "tblr"

    .line 527
    .line 528
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 529
    .line 530
    .line 531
    move-result v6

    .line 532
    if-nez v6, :cond_15

    .line 533
    .line 534
    goto :goto_c

    .line 535
    :cond_15
    move v8, v5

    .line 536
    goto :goto_c

    .line 537
    :sswitch_2
    const-string v9, "tb"

    .line 538
    .line 539
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 540
    .line 541
    .line 542
    move-result v6

    .line 543
    if-nez v6, :cond_16

    .line 544
    .line 545
    goto :goto_c

    .line 546
    :cond_16
    const/4 v8, 0x0

    .line 547
    :goto_c
    packed-switch v8, :pswitch_data_0

    .line 548
    .line 549
    .line 550
    goto :goto_d

    .line 551
    :pswitch_0
    move/from16 v19, v5

    .line 552
    .line 553
    goto :goto_e

    .line 554
    :pswitch_1
    move/from16 v19, v3

    .line 555
    .line 556
    goto :goto_e

    .line 557
    :cond_17
    :goto_d
    const/high16 v6, -0x80000000

    .line 558
    .line 559
    move/from16 v19, v6

    .line 560
    .line 561
    :goto_e
    new-instance v9, LY0/g;

    .line 562
    .line 563
    const/4 v13, 0x0

    .line 564
    const/16 v17, 0x1

    .line 565
    .line 566
    move v11, v4

    .line 567
    invoke-direct/range {v9 .. v19}, LY0/g;-><init>(Ljava/lang/String;FFIIFFIFI)V

    .line 568
    .line 569
    .line 570
    :goto_f
    if-eqz v9, :cond_3

    .line 571
    .line 572
    iget-object v4, v9, LY0/g;->a:Ljava/lang/String;

    .line 573
    .line 574
    move-object/from16 v6, p4

    .line 575
    .line 576
    invoke-virtual {v6, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    .line 578
    .line 579
    goto/16 :goto_3

    .line 580
    .line 581
    :cond_18
    move/from16 v7, p2

    .line 582
    .line 583
    move-object/from16 v6, p4

    .line 584
    .line 585
    const-string v4, "metadata"

    .line 586
    .line 587
    invoke-static {v0, v4}, Landroidx/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 588
    .line 589
    .line 590
    move-result v9

    .line 591
    if-eqz v9, :cond_4

    .line 592
    .line 593
    :cond_19
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 594
    .line 595
    .line 596
    const-string v9, "image"

    .line 597
    .line 598
    invoke-static {v0, v9}, Landroidx/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 599
    .line 600
    .line 601
    move-result v9

    .line 602
    if-eqz v9, :cond_1a

    .line 603
    .line 604
    invoke-static {v0, v8}, Landroidx/media3/common/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 605
    .line 606
    .line 607
    move-result-object v9

    .line 608
    if-eqz v9, :cond_1a

    .line 609
    .line 610
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    .line 611
    .line 612
    .line 613
    move-result-object v10

    .line 614
    move-object/from16 v11, p5

    .line 615
    .line 616
    invoke-virtual {v11, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    .line 618
    .line 619
    goto :goto_10

    .line 620
    :cond_1a
    move-object/from16 v11, p5

    .line 621
    .line 622
    :goto_10
    invoke-static {v0, v4}, Landroidx/media3/common/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 623
    .line 624
    .line 625
    move-result v9

    .line 626
    if-eqz v9, :cond_19

    .line 627
    .line 628
    :goto_11
    const-string v4, "head"

    .line 629
    .line 630
    invoke-static {v0, v4}, Landroidx/media3/common/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 631
    .line 632
    .line 633
    move-result v4

    .line 634
    if-eqz v4, :cond_1b

    .line 635
    .line 636
    return-void

    .line 637
    :cond_1b
    const/4 v4, 0x0

    .line 638
    goto/16 :goto_0

    .line 639
    .line 640
    nop

    .line 641
    :sswitch_data_0
    .sparse-switch
        0xe6e -> :sswitch_2
        0x363874 -> :sswitch_1
        0x363928 -> :sswitch_0
    .end sparse-switch

    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static g(Lorg/xmlpull/v1/XmlPullParser;LY0/c;Ljava/util/HashMap;LY0/d;)LY0/c;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v9, p1

    .line 4
    .line 5
    move-object/from16 v1, p3

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    const/4 v4, 0x0

    .line 13
    invoke-static {v0, v4}, LY0/f;->h(Lorg/xmlpull/v1/XmlPullParser;LY0/i;)LY0/i;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    const-string v8, ""

    .line 23
    .line 24
    move-wide v11, v6

    .line 25
    move-wide v13, v11

    .line 26
    move-wide v15, v13

    .line 27
    move-wide/from16 v17, v15

    .line 28
    .line 29
    move-object v7, v8

    .line 30
    const/4 v6, 0x0

    .line 31
    move-object v8, v4

    .line 32
    :goto_0
    if-ge v6, v3, :cond_a

    .line 33
    .line 34
    move-wide/from16 v19, v11

    .line 35
    .line 36
    invoke-interface {v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v11

    .line 40
    invoke-interface {v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v12

    .line 44
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    const/16 v21, -0x1

    .line 48
    .line 49
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    .line 50
    .line 51
    .line 52
    move-result v22

    .line 53
    sparse-switch v22, :sswitch_data_0

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :sswitch_0
    const-string v10, "backgroundImage"

    .line 58
    .line 59
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v10

    .line 63
    if-nez v10, :cond_0

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_0
    const/16 v21, 0x5

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :sswitch_1
    const-string v10, "style"

    .line 70
    .line 71
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v10

    .line 75
    if-nez v10, :cond_1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_1
    const/16 v21, 0x4

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :sswitch_2
    const-string v10, "begin"

    .line 82
    .line 83
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v10

    .line 87
    if-nez v10, :cond_2

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_2
    const/16 v21, 0x3

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :sswitch_3
    const-string v10, "end"

    .line 94
    .line 95
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v10

    .line 99
    if-nez v10, :cond_3

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_3
    const/16 v21, 0x2

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :sswitch_4
    const-string v10, "dur"

    .line 106
    .line 107
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v10

    .line 111
    if-nez v10, :cond_4

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_4
    move/from16 v21, v2

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :sswitch_5
    const-string v10, "region"

    .line 118
    .line 119
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v10

    .line 123
    if-nez v10, :cond_5

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_5
    const/16 v21, 0x0

    .line 127
    .line 128
    :goto_1
    packed-switch v21, :pswitch_data_0

    .line 129
    .line 130
    .line 131
    goto :goto_2

    .line 132
    :pswitch_0
    const-string v10, "#"

    .line 133
    .line 134
    invoke-virtual {v12, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 135
    .line 136
    .line 137
    move-result v10

    .line 138
    if-eqz v10, :cond_6

    .line 139
    .line 140
    invoke-virtual {v12, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v8

    .line 144
    :cond_6
    :goto_2
    move-object/from16 v10, p2

    .line 145
    .line 146
    const/4 v11, 0x0

    .line 147
    goto :goto_5

    .line 148
    :pswitch_1
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v10

    .line 152
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 153
    .line 154
    .line 155
    move-result v11

    .line 156
    if-eqz v11, :cond_7

    .line 157
    .line 158
    const/4 v11, 0x0

    .line 159
    new-array v10, v11, [Ljava/lang/String;

    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_7
    const/4 v11, 0x0

    .line 163
    const-string v12, "\\s+"

    .line 164
    .line 165
    invoke-static {v10, v12}, Landroidx/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v10

    .line 169
    :goto_3
    array-length v12, v10

    .line 170
    if-lez v12, :cond_8

    .line 171
    .line 172
    move-object v4, v10

    .line 173
    :cond_8
    :goto_4
    move-object/from16 v10, p2

    .line 174
    .line 175
    goto :goto_5

    .line 176
    :pswitch_2
    const/4 v11, 0x0

    .line 177
    invoke-static {v12, v1}, LY0/f;->i(Ljava/lang/String;LY0/d;)J

    .line 178
    .line 179
    .line 180
    move-result-wide v13

    .line 181
    goto :goto_4

    .line 182
    :pswitch_3
    const/4 v11, 0x0

    .line 183
    invoke-static {v12, v1}, LY0/f;->i(Ljava/lang/String;LY0/d;)J

    .line 184
    .line 185
    .line 186
    move-result-wide v15

    .line 187
    goto :goto_4

    .line 188
    :pswitch_4
    const/4 v11, 0x0

    .line 189
    invoke-static {v12, v1}, LY0/f;->i(Ljava/lang/String;LY0/d;)J

    .line 190
    .line 191
    .line 192
    move-result-wide v17

    .line 193
    goto :goto_4

    .line 194
    :pswitch_5
    move-object/from16 v10, p2

    .line 195
    .line 196
    const/4 v11, 0x0

    .line 197
    invoke-virtual {v10, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v21

    .line 201
    if-eqz v21, :cond_9

    .line 202
    .line 203
    move-object v7, v12

    .line 204
    :cond_9
    :goto_5
    add-int/2addr v6, v2

    .line 205
    move-wide/from16 v11, v19

    .line 206
    .line 207
    goto/16 :goto_0

    .line 208
    .line 209
    :cond_a
    move-wide/from16 v19, v11

    .line 210
    .line 211
    if-eqz v9, :cond_c

    .line 212
    .line 213
    iget-wide v1, v9, LY0/c;->d:J

    .line 214
    .line 215
    cmp-long v3, v1, v19

    .line 216
    .line 217
    if-eqz v3, :cond_c

    .line 218
    .line 219
    cmp-long v3, v13, v19

    .line 220
    .line 221
    if-eqz v3, :cond_b

    .line 222
    .line 223
    add-long/2addr v13, v1

    .line 224
    :cond_b
    cmp-long v3, v15, v19

    .line 225
    .line 226
    if-eqz v3, :cond_c

    .line 227
    .line 228
    add-long/2addr v15, v1

    .line 229
    :cond_c
    move-wide v1, v13

    .line 230
    cmp-long v3, v15, v19

    .line 231
    .line 232
    if-nez v3, :cond_e

    .line 233
    .line 234
    cmp-long v3, v17, v19

    .line 235
    .line 236
    if-eqz v3, :cond_d

    .line 237
    .line 238
    add-long v15, v1, v17

    .line 239
    .line 240
    goto :goto_6

    .line 241
    :cond_d
    if-eqz v9, :cond_e

    .line 242
    .line 243
    iget-wide v10, v9, LY0/c;->e:J

    .line 244
    .line 245
    cmp-long v3, v10, v19

    .line 246
    .line 247
    if-eqz v3, :cond_e

    .line 248
    .line 249
    move-wide v15, v10

    .line 250
    :cond_e
    :goto_6
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    move-object v6, v4

    .line 255
    move-wide v3, v15

    .line 256
    invoke-static/range {v0 .. v9}, LY0/c;->buildNode(Ljava/lang/String;JJLY0/i;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LY0/c;)LY0/c;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    return-object v0

    .line 261
    :sswitch_data_0
    .sparse-switch
        -0x37b7d90c -> :sswitch_5
        0x18601 -> :sswitch_4
        0x188db -> :sswitch_3
        0x59478a9 -> :sswitch_2
        0x68b1db1 -> :sswitch_1
        0x4d0b70cd -> :sswitch_0
    .end sparse-switch

    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static h(Lorg/xmlpull/v1/XmlPullParser;LY0/i;)LY0/i;
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "start"

    .line 4
    .line 5
    const-string v3, "right"

    .line 6
    .line 7
    const-string v4, "left"

    .line 8
    .line 9
    const-string v5, "end"

    .line 10
    .line 11
    const-string v6, "center"

    .line 12
    .line 13
    const/4 v11, 0x2

    .line 14
    const/4 v12, 0x1

    .line 15
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    .line 16
    .line 17
    .line 18
    move-result v13

    .line 19
    const/4 v14, 0x0

    .line 20
    move-object/from16 v0, p1

    .line 21
    .line 22
    move v15, v14

    .line 23
    :goto_0
    if-ge v15, v13, :cond_2b

    .line 24
    .line 25
    invoke-interface {v1, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v7

    .line 29
    invoke-interface {v1, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v9

    .line 33
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    const/16 v16, 0x0

    .line 37
    .line 38
    const-string v8, "TtmlParser"

    .line 39
    .line 40
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    .line 41
    .line 42
    .line 43
    move-result v17

    .line 44
    sparse-switch v17, :sswitch_data_0

    .line 45
    .line 46
    .line 47
    :goto_1
    const/4 v9, -0x1

    .line 48
    goto/16 :goto_2

    .line 49
    .line 50
    :sswitch_0
    const-string v10, "multiRowAlign"

    .line 51
    .line 52
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v9

    .line 56
    if-nez v9, :cond_0

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_0
    const/16 v9, 0x10

    .line 60
    .line 61
    goto/16 :goto_2

    .line 62
    .line 63
    :sswitch_1
    const-string v10, "backgroundColor"

    .line 64
    .line 65
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v9

    .line 69
    if-nez v9, :cond_1

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    const/16 v9, 0xf

    .line 73
    .line 74
    goto/16 :goto_2

    .line 75
    .line 76
    :sswitch_2
    const-string v10, "rubyPosition"

    .line 77
    .line 78
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v9

    .line 82
    if-nez v9, :cond_2

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    const/16 v9, 0xe

    .line 86
    .line 87
    goto/16 :goto_2

    .line 88
    .line 89
    :sswitch_3
    const-string v10, "textEmphasis"

    .line 90
    .line 91
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v9

    .line 95
    if-nez v9, :cond_3

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_3
    const/16 v9, 0xd

    .line 99
    .line 100
    goto/16 :goto_2

    .line 101
    .line 102
    :sswitch_4
    const-string v10, "fontSize"

    .line 103
    .line 104
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v9

    .line 108
    if-nez v9, :cond_4

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_4
    const/16 v9, 0xc

    .line 112
    .line 113
    goto/16 :goto_2

    .line 114
    .line 115
    :sswitch_5
    const-string v10, "textCombine"

    .line 116
    .line 117
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v9

    .line 121
    if-nez v9, :cond_5

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_5
    const/16 v9, 0xb

    .line 125
    .line 126
    goto/16 :goto_2

    .line 127
    .line 128
    :sswitch_6
    const-string v10, "shear"

    .line 129
    .line 130
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v9

    .line 134
    if-nez v9, :cond_6

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_6
    const/16 v9, 0xa

    .line 138
    .line 139
    goto/16 :goto_2

    .line 140
    .line 141
    :sswitch_7
    const-string v10, "color"

    .line 142
    .line 143
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v9

    .line 147
    if-nez v9, :cond_7

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_7
    const/16 v9, 0x9

    .line 151
    .line 152
    goto/16 :goto_2

    .line 153
    .line 154
    :sswitch_8
    const-string v10, "ruby"

    .line 155
    .line 156
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v9

    .line 160
    if-nez v9, :cond_8

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_8
    const/16 v9, 0x8

    .line 164
    .line 165
    goto/16 :goto_2

    .line 166
    .line 167
    :sswitch_9
    const-string v10, "id"

    .line 168
    .line 169
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v9

    .line 173
    if-nez v9, :cond_9

    .line 174
    .line 175
    goto/16 :goto_1

    .line 176
    .line 177
    :cond_9
    const/4 v9, 0x7

    .line 178
    goto :goto_2

    .line 179
    :sswitch_a
    const-string v10, "fontWeight"

    .line 180
    .line 181
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v9

    .line 185
    if-nez v9, :cond_a

    .line 186
    .line 187
    goto/16 :goto_1

    .line 188
    .line 189
    :cond_a
    const/4 v9, 0x6

    .line 190
    goto :goto_2

    .line 191
    :sswitch_b
    const-string v10, "textDecoration"

    .line 192
    .line 193
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v9

    .line 197
    if-nez v9, :cond_b

    .line 198
    .line 199
    goto/16 :goto_1

    .line 200
    .line 201
    :cond_b
    const/4 v9, 0x5

    .line 202
    goto :goto_2

    .line 203
    :sswitch_c
    const-string v10, "origin"

    .line 204
    .line 205
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v9

    .line 209
    if-nez v9, :cond_c

    .line 210
    .line 211
    goto/16 :goto_1

    .line 212
    .line 213
    :cond_c
    const/4 v9, 0x4

    .line 214
    goto :goto_2

    .line 215
    :sswitch_d
    const-string v10, "textAlign"

    .line 216
    .line 217
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v9

    .line 221
    if-nez v9, :cond_d

    .line 222
    .line 223
    goto/16 :goto_1

    .line 224
    .line 225
    :cond_d
    const/4 v9, 0x3

    .line 226
    goto :goto_2

    .line 227
    :sswitch_e
    const-string v10, "fontFamily"

    .line 228
    .line 229
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v9

    .line 233
    if-nez v9, :cond_e

    .line 234
    .line 235
    goto/16 :goto_1

    .line 236
    .line 237
    :cond_e
    move v9, v11

    .line 238
    goto :goto_2

    .line 239
    :sswitch_f
    const-string v10, "extent"

    .line 240
    .line 241
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v9

    .line 245
    if-nez v9, :cond_f

    .line 246
    .line 247
    goto/16 :goto_1

    .line 248
    .line 249
    :cond_f
    move v9, v12

    .line 250
    goto :goto_2

    .line 251
    :sswitch_10
    const-string v10, "fontStyle"

    .line 252
    .line 253
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result v9

    .line 257
    if-nez v9, :cond_10

    .line 258
    .line 259
    goto/16 :goto_1

    .line 260
    .line 261
    :cond_10
    move v9, v14

    .line 262
    :goto_2
    packed-switch v9, :pswitch_data_0

    .line 263
    .line 264
    .line 265
    goto/16 :goto_a

    .line 266
    .line 267
    :pswitch_0
    invoke-static {v0}, LY0/f;->a(LY0/i;)LY0/i;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    invoke-static {v7}, LP3/a;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v7

    .line 275
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 279
    .line 280
    .line 281
    move-result v8

    .line 282
    sparse-switch v8, :sswitch_data_1

    .line 283
    .line 284
    .line 285
    :goto_3
    const/4 v7, -0x1

    .line 286
    goto :goto_4

    .line 287
    :sswitch_11
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result v7

    .line 291
    if-nez v7, :cond_11

    .line 292
    .line 293
    goto :goto_3

    .line 294
    :cond_11
    const/4 v7, 0x4

    .line 295
    goto :goto_4

    .line 296
    :sswitch_12
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result v7

    .line 300
    if-nez v7, :cond_12

    .line 301
    .line 302
    goto :goto_3

    .line 303
    :cond_12
    const/4 v7, 0x3

    .line 304
    goto :goto_4

    .line 305
    :sswitch_13
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result v7

    .line 309
    if-nez v7, :cond_13

    .line 310
    .line 311
    goto :goto_3

    .line 312
    :cond_13
    move v7, v11

    .line 313
    goto :goto_4

    .line 314
    :sswitch_14
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result v7

    .line 318
    if-nez v7, :cond_14

    .line 319
    .line 320
    goto :goto_3

    .line 321
    :cond_14
    move v7, v12

    .line 322
    goto :goto_4

    .line 323
    :sswitch_15
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    move-result v7

    .line 327
    if-nez v7, :cond_15

    .line 328
    .line 329
    goto :goto_3

    .line 330
    :cond_15
    move v7, v14

    .line 331
    :goto_4
    packed-switch v7, :pswitch_data_1

    .line 332
    .line 333
    .line 334
    :goto_5
    move-object/from16 v7, v16

    .line 335
    .line 336
    goto :goto_6

    .line 337
    :pswitch_1
    sget-object v16, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 338
    .line 339
    goto :goto_5

    .line 340
    :pswitch_2
    sget-object v16, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 341
    .line 342
    goto :goto_5

    .line 343
    :pswitch_3
    sget-object v16, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 344
    .line 345
    goto :goto_5

    .line 346
    :goto_6
    invoke-virtual {v0, v7}, LY0/i;->setMultiRowAlign(Landroid/text/Layout$Alignment;)LY0/i;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    :goto_7
    move v10, v14

    .line 351
    const/4 v8, 0x3

    .line 352
    const/4 v9, 0x4

    .line 353
    goto/16 :goto_15

    .line 354
    .line 355
    :pswitch_4
    invoke-static {v0}, LY0/f;->a(LY0/i;)LY0/i;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    :try_start_0
    invoke-static {v7}, Landroidx/media3/common/util/ColorParser;->parseTtmlColor(Ljava/lang/String;)I

    .line 360
    .line 361
    .line 362
    move-result v9

    .line 363
    invoke-virtual {v0, v9}, LY0/i;->setBackgroundColor(I)LY0/i;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    .line 365
    .line 366
    goto :goto_7

    .line 367
    :catch_0
    const-string v9, "Failed parsing background value: "

    .line 368
    .line 369
    invoke-static {v9, v7, v8}, LA/i;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    goto :goto_7

    .line 373
    :pswitch_5
    invoke-static {v7}, LP3/a;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v7

    .line 377
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 378
    .line 379
    .line 380
    const-string v8, "before"

    .line 381
    .line 382
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 383
    .line 384
    .line 385
    move-result v8

    .line 386
    if-nez v8, :cond_17

    .line 387
    .line 388
    const-string v8, "after"

    .line 389
    .line 390
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 391
    .line 392
    .line 393
    move-result v7

    .line 394
    if-nez v7, :cond_16

    .line 395
    .line 396
    goto :goto_7

    .line 397
    :cond_16
    invoke-static {v0}, LY0/f;->a(LY0/i;)LY0/i;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    invoke-virtual {v0, v11}, LY0/i;->setRubyPosition(I)LY0/i;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    goto :goto_7

    .line 406
    :cond_17
    invoke-static {v0}, LY0/f;->a(LY0/i;)LY0/i;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    invoke-virtual {v0, v12}, LY0/i;->setRubyPosition(I)LY0/i;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    goto :goto_7

    .line 415
    :pswitch_6
    invoke-static {v0}, LY0/f;->a(LY0/i;)LY0/i;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    invoke-static {v7}, LY0/b;->parse(Ljava/lang/String;)LY0/b;

    .line 420
    .line 421
    .line 422
    move-result-object v7

    .line 423
    invoke-virtual {v0, v7}, LY0/i;->setTextEmphasis(LY0/b;)LY0/i;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    goto :goto_7

    .line 428
    :pswitch_7
    :try_start_1
    invoke-static {v0}, LY0/f;->a(LY0/i;)LY0/i;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    invoke-static {v7, v0}, LY0/f;->d(Ljava/lang/String;LY0/i;)V
    :try_end_1
    .catch Landroidx/media3/extractor/text/SubtitleDecoderException; {:try_start_1 .. :try_end_1} :catch_1

    .line 433
    .line 434
    .line 435
    goto :goto_7

    .line 436
    :catch_1
    const-string v9, "Failed parsing fontSize value: "

    .line 437
    .line 438
    invoke-static {v9, v7, v8}, LA/i;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    goto :goto_7

    .line 442
    :pswitch_8
    invoke-static {v7}, LP3/a;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v7

    .line 446
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 447
    .line 448
    .line 449
    const-string v8, "all"

    .line 450
    .line 451
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 452
    .line 453
    .line 454
    move-result v8

    .line 455
    if-nez v8, :cond_19

    .line 456
    .line 457
    const-string v8, "none"

    .line 458
    .line 459
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 460
    .line 461
    .line 462
    move-result v7

    .line 463
    if-nez v7, :cond_18

    .line 464
    .line 465
    goto :goto_7

    .line 466
    :cond_18
    invoke-static {v0}, LY0/f;->a(LY0/i;)LY0/i;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    invoke-virtual {v0, v14}, LY0/i;->setTextCombine(Z)LY0/i;

    .line 471
    .line 472
    .line 473
    move-result-object v0

    .line 474
    goto :goto_7

    .line 475
    :cond_19
    invoke-static {v0}, LY0/f;->a(LY0/i;)LY0/i;

    .line 476
    .line 477
    .line 478
    move-result-object v0

    .line 479
    invoke-virtual {v0, v12}, LY0/i;->setTextCombine(Z)LY0/i;

    .line 480
    .line 481
    .line 482
    move-result-object v0

    .line 483
    goto/16 :goto_7

    .line 484
    .line 485
    :pswitch_9
    invoke-static {v0}, LY0/f;->a(LY0/i;)LY0/i;

    .line 486
    .line 487
    .line 488
    move-result-object v9

    .line 489
    sget-object v0, LY0/f;->e:Ljava/util/regex/Pattern;

    .line 490
    .line 491
    invoke-virtual {v0, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 492
    .line 493
    .line 494
    move-result-object v0

    .line 495
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 496
    .line 497
    .line 498
    move-result v10

    .line 499
    const v16, 0x7f7fffff    # Float.MAX_VALUE

    .line 500
    .line 501
    .line 502
    if-nez v10, :cond_1a

    .line 503
    .line 504
    const-string v0, "Invalid value for shear: "

    .line 505
    .line 506
    invoke-static {v0, v7, v8}, LA/i;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    .line 508
    .line 509
    :goto_8
    move/from16 v0, v16

    .line 510
    .line 511
    goto :goto_9

    .line 512
    :cond_1a
    :try_start_2
    invoke-virtual {v0, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v0

    .line 516
    invoke-static {v0}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    .line 518
    .line 519
    move-result-object v0

    .line 520
    check-cast v0, Ljava/lang/String;

    .line 521
    .line 522
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 523
    .line 524
    .line 525
    move-result v0

    .line 526
    const/high16 v10, -0x3d380000    # -100.0f

    .line 527
    .line 528
    invoke-static {v10, v0}, Ljava/lang/Math;->max(FF)F

    .line 529
    .line 530
    .line 531
    move-result v0

    .line 532
    const/high16 v10, 0x42c80000    # 100.0f

    .line 533
    .line 534
    invoke-static {v10, v0}, Ljava/lang/Math;->min(FF)F

    .line 535
    .line 536
    .line 537
    move-result v16
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 538
    goto :goto_8

    .line 539
    :catch_2
    move-exception v0

    .line 540
    new-instance v10, Ljava/lang/StringBuilder;

    .line 541
    .line 542
    const-string v14, "Failed to parse shear: "

    .line 543
    .line 544
    invoke-direct {v10, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 545
    .line 546
    .line 547
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v7

    .line 554
    invoke-static {v8, v7, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 555
    .line 556
    .line 557
    goto :goto_8

    .line 558
    :goto_9
    invoke-virtual {v9, v0}, LY0/i;->setShearPercentage(F)LY0/i;

    .line 559
    .line 560
    .line 561
    move-result-object v0

    .line 562
    :goto_a
    const/4 v8, 0x3

    .line 563
    :goto_b
    const/4 v9, 0x4

    .line 564
    :cond_1b
    :goto_c
    const/4 v10, 0x0

    .line 565
    goto/16 :goto_15

    .line 566
    .line 567
    :pswitch_a
    invoke-static {v0}, LY0/f;->a(LY0/i;)LY0/i;

    .line 568
    .line 569
    .line 570
    move-result-object v0

    .line 571
    :try_start_3
    invoke-static {v7}, Landroidx/media3/common/util/ColorParser;->parseTtmlColor(Ljava/lang/String;)I

    .line 572
    .line 573
    .line 574
    move-result v9

    .line 575
    invoke-virtual {v0, v9}, LY0/i;->setFontColor(I)LY0/i;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    .line 576
    .line 577
    .line 578
    goto :goto_a

    .line 579
    :catch_3
    const-string v9, "Failed parsing color value: "

    .line 580
    .line 581
    invoke-static {v9, v7, v8}, LA/i;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    .line 583
    .line 584
    goto :goto_a

    .line 585
    :pswitch_b
    invoke-static {v7}, LP3/a;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v7

    .line 589
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 590
    .line 591
    .line 592
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 593
    .line 594
    .line 595
    move-result v8

    .line 596
    sparse-switch v8, :sswitch_data_2

    .line 597
    .line 598
    .line 599
    :goto_d
    const/4 v7, -0x1

    .line 600
    goto :goto_e

    .line 601
    :sswitch_16
    const-string v8, "text"

    .line 602
    .line 603
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 604
    .line 605
    .line 606
    move-result v7

    .line 607
    if-nez v7, :cond_1c

    .line 608
    .line 609
    goto :goto_d

    .line 610
    :cond_1c
    const/4 v7, 0x5

    .line 611
    goto :goto_e

    .line 612
    :sswitch_17
    const-string v8, "base"

    .line 613
    .line 614
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 615
    .line 616
    .line 617
    move-result v7

    .line 618
    if-nez v7, :cond_1d

    .line 619
    .line 620
    goto :goto_d

    .line 621
    :cond_1d
    const/4 v7, 0x4

    .line 622
    goto :goto_e

    .line 623
    :sswitch_18
    const-string v8, "textContainer"

    .line 624
    .line 625
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 626
    .line 627
    .line 628
    move-result v7

    .line 629
    if-nez v7, :cond_1e

    .line 630
    .line 631
    goto :goto_d

    .line 632
    :cond_1e
    const/4 v7, 0x3

    .line 633
    goto :goto_e

    .line 634
    :sswitch_19
    const-string v8, "delimiter"

    .line 635
    .line 636
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 637
    .line 638
    .line 639
    move-result v7

    .line 640
    if-nez v7, :cond_1f

    .line 641
    .line 642
    goto :goto_d

    .line 643
    :cond_1f
    move v7, v11

    .line 644
    goto :goto_e

    .line 645
    :sswitch_1a
    const-string v8, "container"

    .line 646
    .line 647
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 648
    .line 649
    .line 650
    move-result v7

    .line 651
    if-nez v7, :cond_20

    .line 652
    .line 653
    goto :goto_d

    .line 654
    :cond_20
    move v7, v12

    .line 655
    goto :goto_e

    .line 656
    :sswitch_1b
    const-string v8, "baseContainer"

    .line 657
    .line 658
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 659
    .line 660
    .line 661
    move-result v7

    .line 662
    if-nez v7, :cond_21

    .line 663
    .line 664
    goto :goto_d

    .line 665
    :cond_21
    const/4 v7, 0x0

    .line 666
    :goto_e
    packed-switch v7, :pswitch_data_2

    .line 667
    .line 668
    .line 669
    const/4 v8, 0x3

    .line 670
    goto :goto_b

    .line 671
    :pswitch_c
    invoke-static {v0}, LY0/f;->a(LY0/i;)LY0/i;

    .line 672
    .line 673
    .line 674
    move-result-object v0

    .line 675
    const/4 v8, 0x3

    .line 676
    invoke-virtual {v0, v8}, LY0/i;->setRubyType(I)LY0/i;

    .line 677
    .line 678
    .line 679
    move-result-object v0

    .line 680
    goto :goto_b

    .line 681
    :pswitch_d
    const/4 v8, 0x3

    .line 682
    invoke-static {v0}, LY0/f;->a(LY0/i;)LY0/i;

    .line 683
    .line 684
    .line 685
    move-result-object v0

    .line 686
    const/4 v9, 0x4

    .line 687
    invoke-virtual {v0, v9}, LY0/i;->setRubyType(I)LY0/i;

    .line 688
    .line 689
    .line 690
    move-result-object v0

    .line 691
    goto :goto_c

    .line 692
    :pswitch_e
    const/4 v8, 0x3

    .line 693
    const/4 v9, 0x4

    .line 694
    invoke-static {v0}, LY0/f;->a(LY0/i;)LY0/i;

    .line 695
    .line 696
    .line 697
    move-result-object v0

    .line 698
    invoke-virtual {v0, v12}, LY0/i;->setRubyType(I)LY0/i;

    .line 699
    .line 700
    .line 701
    move-result-object v0

    .line 702
    goto/16 :goto_c

    .line 703
    .line 704
    :pswitch_f
    const/4 v8, 0x3

    .line 705
    const/4 v9, 0x4

    .line 706
    invoke-static {v0}, LY0/f;->a(LY0/i;)LY0/i;

    .line 707
    .line 708
    .line 709
    move-result-object v0

    .line 710
    invoke-virtual {v0, v11}, LY0/i;->setRubyType(I)LY0/i;

    .line 711
    .line 712
    .line 713
    move-result-object v0

    .line 714
    goto/16 :goto_c

    .line 715
    .line 716
    :pswitch_10
    const/4 v8, 0x3

    .line 717
    const/4 v9, 0x4

    .line 718
    const-string v10, "style"

    .line 719
    .line 720
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 721
    .line 722
    .line 723
    move-result-object v14

    .line 724
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 725
    .line 726
    .line 727
    move-result v10

    .line 728
    if-eqz v10, :cond_1b

    .line 729
    .line 730
    invoke-static {v0}, LY0/f;->a(LY0/i;)LY0/i;

    .line 731
    .line 732
    .line 733
    move-result-object v0

    .line 734
    invoke-virtual {v0, v7}, LY0/i;->setId(Ljava/lang/String;)LY0/i;

    .line 735
    .line 736
    .line 737
    move-result-object v0

    .line 738
    goto/16 :goto_c

    .line 739
    .line 740
    :pswitch_11
    const/4 v8, 0x3

    .line 741
    const/4 v9, 0x4

    .line 742
    invoke-static {v0}, LY0/f;->a(LY0/i;)LY0/i;

    .line 743
    .line 744
    .line 745
    move-result-object v0

    .line 746
    const-string v10, "bold"

    .line 747
    .line 748
    invoke-virtual {v10, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 749
    .line 750
    .line 751
    move-result v7

    .line 752
    invoke-virtual {v0, v7}, LY0/i;->setBold(Z)LY0/i;

    .line 753
    .line 754
    .line 755
    move-result-object v0

    .line 756
    goto/16 :goto_c

    .line 757
    .line 758
    :pswitch_12
    const/4 v8, 0x3

    .line 759
    const/4 v9, 0x4

    .line 760
    invoke-static {v7}, LP3/a;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    .line 761
    .line 762
    .line 763
    move-result-object v7

    .line 764
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 765
    .line 766
    .line 767
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 768
    .line 769
    .line 770
    move-result v10

    .line 771
    sparse-switch v10, :sswitch_data_3

    .line 772
    .line 773
    .line 774
    :goto_f
    const/4 v7, -0x1

    .line 775
    goto :goto_10

    .line 776
    :sswitch_1c
    const-string v10, "linethrough"

    .line 777
    .line 778
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 779
    .line 780
    .line 781
    move-result v7

    .line 782
    if-nez v7, :cond_22

    .line 783
    .line 784
    goto :goto_f

    .line 785
    :cond_22
    move v7, v8

    .line 786
    goto :goto_10

    .line 787
    :sswitch_1d
    const-string v10, "nolinethrough"

    .line 788
    .line 789
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 790
    .line 791
    .line 792
    move-result v7

    .line 793
    if-nez v7, :cond_23

    .line 794
    .line 795
    goto :goto_f

    .line 796
    :cond_23
    move v7, v11

    .line 797
    goto :goto_10

    .line 798
    :sswitch_1e
    const-string v10, "underline"

    .line 799
    .line 800
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 801
    .line 802
    .line 803
    move-result v7

    .line 804
    if-nez v7, :cond_24

    .line 805
    .line 806
    goto :goto_f

    .line 807
    :cond_24
    move v7, v12

    .line 808
    goto :goto_10

    .line 809
    :sswitch_1f
    const-string v10, "nounderline"

    .line 810
    .line 811
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 812
    .line 813
    .line 814
    move-result v7

    .line 815
    if-nez v7, :cond_25

    .line 816
    .line 817
    goto :goto_f

    .line 818
    :cond_25
    const/4 v7, 0x0

    .line 819
    :goto_10
    packed-switch v7, :pswitch_data_3

    .line 820
    .line 821
    .line 822
    goto/16 :goto_c

    .line 823
    .line 824
    :pswitch_13
    invoke-static {v0}, LY0/f;->a(LY0/i;)LY0/i;

    .line 825
    .line 826
    .line 827
    move-result-object v0

    .line 828
    invoke-virtual {v0, v12}, LY0/i;->setLinethrough(Z)LY0/i;

    .line 829
    .line 830
    .line 831
    move-result-object v0

    .line 832
    goto/16 :goto_c

    .line 833
    .line 834
    :pswitch_14
    invoke-static {v0}, LY0/f;->a(LY0/i;)LY0/i;

    .line 835
    .line 836
    .line 837
    move-result-object v0

    .line 838
    const/4 v10, 0x0

    .line 839
    invoke-virtual {v0, v10}, LY0/i;->setLinethrough(Z)LY0/i;

    .line 840
    .line 841
    .line 842
    move-result-object v0

    .line 843
    goto/16 :goto_15

    .line 844
    .line 845
    :pswitch_15
    const/4 v10, 0x0

    .line 846
    invoke-static {v0}, LY0/f;->a(LY0/i;)LY0/i;

    .line 847
    .line 848
    .line 849
    move-result-object v0

    .line 850
    invoke-virtual {v0, v12}, LY0/i;->setUnderline(Z)LY0/i;

    .line 851
    .line 852
    .line 853
    move-result-object v0

    .line 854
    goto/16 :goto_15

    .line 855
    .line 856
    :pswitch_16
    const/4 v10, 0x0

    .line 857
    invoke-static {v0}, LY0/f;->a(LY0/i;)LY0/i;

    .line 858
    .line 859
    .line 860
    move-result-object v0

    .line 861
    invoke-virtual {v0, v10}, LY0/i;->setUnderline(Z)LY0/i;

    .line 862
    .line 863
    .line 864
    move-result-object v0

    .line 865
    goto/16 :goto_15

    .line 866
    .line 867
    :pswitch_17
    move v10, v14

    .line 868
    const/4 v8, 0x3

    .line 869
    const/4 v9, 0x4

    .line 870
    invoke-static {v0}, LY0/f;->a(LY0/i;)LY0/i;

    .line 871
    .line 872
    .line 873
    move-result-object v0

    .line 874
    invoke-virtual {v0, v7}, LY0/i;->setOrigin(Ljava/lang/String;)LY0/i;

    .line 875
    .line 876
    .line 877
    move-result-object v0

    .line 878
    goto/16 :goto_15

    .line 879
    .line 880
    :pswitch_18
    move v10, v14

    .line 881
    const/4 v8, 0x3

    .line 882
    const/4 v9, 0x4

    .line 883
    invoke-static {v0}, LY0/f;->a(LY0/i;)LY0/i;

    .line 884
    .line 885
    .line 886
    move-result-object v0

    .line 887
    invoke-static {v7}, LP3/a;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    .line 888
    .line 889
    .line 890
    move-result-object v7

    .line 891
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 892
    .line 893
    .line 894
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 895
    .line 896
    .line 897
    move-result v14

    .line 898
    sparse-switch v14, :sswitch_data_4

    .line 899
    .line 900
    .line 901
    :goto_11
    const/4 v7, -0x1

    .line 902
    goto :goto_12

    .line 903
    :sswitch_20
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 904
    .line 905
    .line 906
    move-result v7

    .line 907
    if-nez v7, :cond_26

    .line 908
    .line 909
    goto :goto_11

    .line 910
    :cond_26
    move v7, v9

    .line 911
    goto :goto_12

    .line 912
    :sswitch_21
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 913
    .line 914
    .line 915
    move-result v7

    .line 916
    if-nez v7, :cond_27

    .line 917
    .line 918
    goto :goto_11

    .line 919
    :cond_27
    move v7, v8

    .line 920
    goto :goto_12

    .line 921
    :sswitch_22
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 922
    .line 923
    .line 924
    move-result v7

    .line 925
    if-nez v7, :cond_28

    .line 926
    .line 927
    goto :goto_11

    .line 928
    :cond_28
    move v7, v11

    .line 929
    goto :goto_12

    .line 930
    :sswitch_23
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 931
    .line 932
    .line 933
    move-result v7

    .line 934
    if-nez v7, :cond_29

    .line 935
    .line 936
    goto :goto_11

    .line 937
    :cond_29
    move v7, v12

    .line 938
    goto :goto_12

    .line 939
    :sswitch_24
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 940
    .line 941
    .line 942
    move-result v7

    .line 943
    if-nez v7, :cond_2a

    .line 944
    .line 945
    goto :goto_11

    .line 946
    :cond_2a
    move v7, v10

    .line 947
    :goto_12
    packed-switch v7, :pswitch_data_4

    .line 948
    .line 949
    .line 950
    :goto_13
    move-object/from16 v7, v16

    .line 951
    .line 952
    goto :goto_14

    .line 953
    :pswitch_19
    sget-object v16, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 954
    .line 955
    goto :goto_13

    .line 956
    :pswitch_1a
    sget-object v16, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 957
    .line 958
    goto :goto_13

    .line 959
    :pswitch_1b
    sget-object v16, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 960
    .line 961
    goto :goto_13

    .line 962
    :goto_14
    invoke-virtual {v0, v7}, LY0/i;->setTextAlign(Landroid/text/Layout$Alignment;)LY0/i;

    .line 963
    .line 964
    .line 965
    move-result-object v0

    .line 966
    goto :goto_15

    .line 967
    :pswitch_1c
    move v10, v14

    .line 968
    const/4 v8, 0x3

    .line 969
    const/4 v9, 0x4

    .line 970
    invoke-static {v0}, LY0/f;->a(LY0/i;)LY0/i;

    .line 971
    .line 972
    .line 973
    move-result-object v0

    .line 974
    invoke-virtual {v0, v7}, LY0/i;->setFontFamily(Ljava/lang/String;)LY0/i;

    .line 975
    .line 976
    .line 977
    move-result-object v0

    .line 978
    goto :goto_15

    .line 979
    :pswitch_1d
    move v10, v14

    .line 980
    const/4 v8, 0x3

    .line 981
    const/4 v9, 0x4

    .line 982
    invoke-static {v0}, LY0/f;->a(LY0/i;)LY0/i;

    .line 983
    .line 984
    .line 985
    move-result-object v0

    .line 986
    invoke-virtual {v0, v7}, LY0/i;->setExtent(Ljava/lang/String;)LY0/i;

    .line 987
    .line 988
    .line 989
    move-result-object v0

    .line 990
    goto :goto_15

    .line 991
    :pswitch_1e
    move v10, v14

    .line 992
    const/4 v8, 0x3

    .line 993
    const/4 v9, 0x4

    .line 994
    invoke-static {v0}, LY0/f;->a(LY0/i;)LY0/i;

    .line 995
    .line 996
    .line 997
    move-result-object v0

    .line 998
    const-string v14, "italic"

    .line 999
    .line 1000
    invoke-virtual {v14, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1001
    .line 1002
    .line 1003
    move-result v7

    .line 1004
    invoke-virtual {v0, v7}, LY0/i;->setItalic(Z)LY0/i;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v0

    .line 1008
    :goto_15
    add-int/2addr v15, v12

    .line 1009
    move v14, v10

    .line 1010
    goto/16 :goto_0

    .line 1011
    .line 1012
    :cond_2b
    return-object v0

    .line 1013
    :sswitch_data_0
    .sparse-switch
        -0x5c71855e -> :sswitch_10
        -0x4cd540d6 -> :sswitch_f
        -0x48ff636d -> :sswitch_e
        -0x3f826a28 -> :sswitch_d
        -0x3c1e50da -> :sswitch_c
        -0x3468fa43 -> :sswitch_b
        -0x2bc67c59 -> :sswitch_a
        0xd1b -> :sswitch_9
        0x3595da -> :sswitch_8
        0x5a72f63 -> :sswitch_7
        0x6855ce1 -> :sswitch_6
        0x6909352 -> :sswitch_5
        0x15caa0f0 -> :sswitch_4
        0x36e741c9 -> :sswitch_3
        0x42841923 -> :sswitch_2
        0x4cb7f6d5 -> :sswitch_1
        0x6899f5a4 -> :sswitch_0
    .end sparse-switch

    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_18
        :pswitch_17
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
    .end packed-switch

    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    :sswitch_data_1
    .sparse-switch
        -0x514d33ab -> :sswitch_15
        0x188db -> :sswitch_14
        0x32a007 -> :sswitch_13
        0x677c21c -> :sswitch_12
        0x68ac462 -> :sswitch_11
    .end sparse-switch

    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 1144
    .line 1145
    .line 1146
    .line 1147
    .line 1148
    .line 1149
    .line 1150
    .line 1151
    .line 1152
    .line 1153
    .line 1154
    .line 1155
    .line 1156
    .line 1157
    :sswitch_data_2
    .sparse-switch
        -0x24de7f50 -> :sswitch_1b
        -0x187eb37f -> :sswitch_1a
        -0xeee99f9 -> :sswitch_19
        -0x81c562c -> :sswitch_18
        0x2e06d1 -> :sswitch_17
        0x36452d -> :sswitch_16
    .end sparse-switch

    .line 1158
    .line 1159
    .line 1160
    .line 1161
    .line 1162
    .line 1163
    .line 1164
    .line 1165
    .line 1166
    .line 1167
    .line 1168
    .line 1169
    .line 1170
    .line 1171
    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    .line 1177
    .line 1178
    .line 1179
    .line 1180
    .line 1181
    .line 1182
    .line 1183
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_f
        :pswitch_c
    .end packed-switch

    .line 1184
    .line 1185
    .line 1186
    .line 1187
    .line 1188
    .line 1189
    .line 1190
    .line 1191
    .line 1192
    .line 1193
    .line 1194
    .line 1195
    .line 1196
    .line 1197
    .line 1198
    .line 1199
    :sswitch_data_3
    .sparse-switch
        -0x57195dd5 -> :sswitch_1f
        -0x3d363934 -> :sswitch_1e
        0x36723ff0 -> :sswitch_1d
        0x641ec051 -> :sswitch_1c
    .end sparse-switch

    .line 1200
    .line 1201
    .line 1202
    .line 1203
    .line 1204
    .line 1205
    .line 1206
    .line 1207
    .line 1208
    .line 1209
    .line 1210
    .line 1211
    .line 1212
    .line 1213
    .line 1214
    .line 1215
    .line 1216
    .line 1217
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch

    .line 1218
    .line 1219
    .line 1220
    .line 1221
    .line 1222
    .line 1223
    .line 1224
    .line 1225
    .line 1226
    .line 1227
    .line 1228
    .line 1229
    :sswitch_data_4
    .sparse-switch
        -0x514d33ab -> :sswitch_24
        0x188db -> :sswitch_23
        0x32a007 -> :sswitch_22
        0x677c21c -> :sswitch_21
        0x68ac462 -> :sswitch_20
    .end sparse-switch

    .line 1230
    .line 1231
    .line 1232
    .line 1233
    .line 1234
    .line 1235
    .line 1236
    .line 1237
    .line 1238
    .line 1239
    .line 1240
    .line 1241
    .line 1242
    .line 1243
    .line 1244
    .line 1245
    .line 1246
    .line 1247
    .line 1248
    .line 1249
    .line 1250
    .line 1251
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_1a
        :pswitch_19
    .end packed-switch
.end method

.method public static i(Ljava/lang/String;LY0/d;)J
    .locals 13

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x3

    .line 3
    sget-object v2, LY0/f;->b:Ljava/util/regex/Pattern;

    .line 4
    .line 5
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const-wide v4, 0x412e848000000000L    # 1000000.0

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    const/4 v6, 0x2

    .line 19
    const/4 v7, 0x1

    .line 20
    if-eqz v3, :cond_3

    .line 21
    .line 22
    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 33
    .line 34
    .line 35
    move-result-wide v7

    .line 36
    const-wide/16 v9, 0xe10

    .line 37
    .line 38
    mul-long/2addr v7, v9

    .line 39
    long-to-double v7, v7

    .line 40
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {p0}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    check-cast p0, Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 51
    .line 52
    .line 53
    move-result-wide v9

    .line 54
    const-wide/16 v11, 0x3c

    .line 55
    .line 56
    mul-long/2addr v9, v11

    .line 57
    long-to-double v9, v9

    .line 58
    add-double/2addr v7, v9

    .line 59
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-static {p0}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    check-cast p0, Ljava/lang/String;

    .line 68
    .line 69
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 70
    .line 71
    .line 72
    move-result-wide v9

    .line 73
    long-to-double v9, v9

    .line 74
    add-double/2addr v7, v9

    .line 75
    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    const-wide/16 v0, 0x0

    .line 80
    .line 81
    if-eqz p0, :cond_0

    .line 82
    .line 83
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 84
    .line 85
    .line 86
    move-result-wide v9

    .line 87
    goto :goto_0

    .line 88
    :cond_0
    move-wide v9, v0

    .line 89
    :goto_0
    add-double/2addr v7, v9

    .line 90
    const/4 p0, 0x5

    .line 91
    invoke-virtual {v2, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    if-eqz p0, :cond_1

    .line 96
    .line 97
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 98
    .line 99
    .line 100
    move-result-wide v9

    .line 101
    long-to-float p0, v9

    .line 102
    iget v3, p1, LY0/d;->a:F

    .line 103
    .line 104
    div-float/2addr p0, v3

    .line 105
    float-to-double v9, p0

    .line 106
    goto :goto_1

    .line 107
    :cond_1
    move-wide v9, v0

    .line 108
    :goto_1
    add-double/2addr v7, v9

    .line 109
    const/4 p0, 0x6

    .line 110
    invoke-virtual {v2, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    if-eqz p0, :cond_2

    .line 115
    .line 116
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 117
    .line 118
    .line 119
    move-result-wide v0

    .line 120
    long-to-double v0, v0

    .line 121
    iget p0, p1, LY0/d;->b:I

    .line 122
    .line 123
    int-to-double v2, p0

    .line 124
    div-double/2addr v0, v2

    .line 125
    iget p0, p1, LY0/d;->a:F

    .line 126
    .line 127
    float-to-double p0, p0

    .line 128
    div-double/2addr v0, p0

    .line 129
    :cond_2
    add-double/2addr v7, v0

    .line 130
    mul-double/2addr v7, v4

    .line 131
    double-to-long p0, v7

    .line 132
    return-wide p0

    .line 133
    :cond_3
    sget-object v2, LY0/f;->c:Ljava/util/regex/Pattern;

    .line 134
    .line 135
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    if-eqz v3, :cond_9

    .line 144
    .line 145
    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    invoke-static {p0}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    check-cast p0, Ljava/lang/String;

    .line 154
    .line 155
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 156
    .line 157
    .line 158
    move-result-wide v8

    .line 159
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    invoke-static {p0}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    check-cast p0, Ljava/lang/String;

    .line 168
    .line 169
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    .line 171
    .line 172
    const/4 v2, -0x1

    .line 173
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 174
    .line 175
    .line 176
    move-result v3

    .line 177
    sparse-switch v3, :sswitch_data_0

    .line 178
    .line 179
    .line 180
    :goto_2
    move v0, v2

    .line 181
    goto :goto_3

    .line 182
    :sswitch_0
    const-string v1, "ms"

    .line 183
    .line 184
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result p0

    .line 188
    if-nez p0, :cond_8

    .line 189
    .line 190
    goto :goto_2

    .line 191
    :sswitch_1
    const-string v0, "t"

    .line 192
    .line 193
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result p0

    .line 197
    if-nez p0, :cond_4

    .line 198
    .line 199
    goto :goto_2

    .line 200
    :cond_4
    move v0, v1

    .line 201
    goto :goto_3

    .line 202
    :sswitch_2
    const-string v0, "m"

    .line 203
    .line 204
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result p0

    .line 208
    if-nez p0, :cond_5

    .line 209
    .line 210
    goto :goto_2

    .line 211
    :cond_5
    move v0, v6

    .line 212
    goto :goto_3

    .line 213
    :sswitch_3
    const-string v0, "h"

    .line 214
    .line 215
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result p0

    .line 219
    if-nez p0, :cond_6

    .line 220
    .line 221
    goto :goto_2

    .line 222
    :cond_6
    move v0, v7

    .line 223
    goto :goto_3

    .line 224
    :sswitch_4
    const-string v0, "f"

    .line 225
    .line 226
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result p0

    .line 230
    if-nez p0, :cond_7

    .line 231
    .line 232
    goto :goto_2

    .line 233
    :cond_7
    const/4 v0, 0x0

    .line 234
    :cond_8
    :goto_3
    packed-switch v0, :pswitch_data_0

    .line 235
    .line 236
    .line 237
    goto :goto_6

    .line 238
    :pswitch_0
    const-wide p0, 0x408f400000000000L    # 1000.0

    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    :goto_4
    div-double/2addr v8, p0

    .line 244
    goto :goto_6

    .line 245
    :pswitch_1
    iget p0, p1, LY0/d;->c:I

    .line 246
    .line 247
    int-to-double p0, p0

    .line 248
    goto :goto_4

    .line 249
    :pswitch_2
    const-wide/high16 p0, 0x404e000000000000L    # 60.0

    .line 250
    .line 251
    :goto_5
    mul-double/2addr v8, p0

    .line 252
    goto :goto_6

    .line 253
    :pswitch_3
    const-wide p0, 0x40ac200000000000L    # 3600.0

    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    goto :goto_5

    .line 259
    :pswitch_4
    iget p0, p1, LY0/d;->a:F

    .line 260
    .line 261
    float-to-double p0, p0

    .line 262
    goto :goto_4

    .line 263
    :goto_6
    mul-double/2addr v8, v4

    .line 264
    double-to-long p0, v8

    .line 265
    return-wide p0

    .line 266
    :cond_9
    new-instance p1, Landroidx/media3/extractor/text/SubtitleDecoderException;

    .line 267
    .line 268
    const-string v0, "Malformed time expression: "

    .line 269
    .line 270
    invoke-static {v0, p0}, LA/i;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object p0

    .line 274
    invoke-direct {p1, p0}, Landroidx/media3/extractor/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    throw p1

    .line 278
    nop

    .line 279
    :sswitch_data_0
    .sparse-switch
        0x66 -> :sswitch_4
        0x68 -> :sswitch_3
        0x6d -> :sswitch_2
        0x74 -> :sswitch_1
        0xda6 -> :sswitch_0
    .end sparse-switch

    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static j(Lorg/xmlpull/v1/XmlPullParser;)LY0/e;
    .locals 5

    .line 1
    const-string v0, "extent"

    .line 2
    .line 3
    invoke-static {p0, v0}, Landroidx/media3/common/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    sget-object v1, LY0/f;->g:Ljava/util/regex/Pattern;

    .line 12
    .line 13
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const-string v3, "TtmlParser"

    .line 22
    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    const-string v1, "Ignoring non-pixel tts extent: "

    .line 26
    .line 27
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {v3, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_1
    const/4 v2, 0x1

    .line 36
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {v2}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    const/4 v4, 0x2

    .line 51
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {v1}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    new-instance v4, LY0/e;

    .line 66
    .line 67
    invoke-direct {v4, v2, v1}, LY0/e;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    .line 70
    return-object v4

    .line 71
    :catch_0
    const-string v1, "Ignoring malformed tts extent: "

    .line 72
    .line 73
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-static {v3, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return-object v0
.end method


# virtual methods
.method public getCueReplacementBehavior()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public parse([BIILS0/r;Landroidx/media3/common/util/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "LS0/r;",
            "Landroidx/media3/common/util/Consumer<",
            "LS0/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, LY0/f;->parseToLegacySubtitle([BII)LS0/i;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1, p4, p5}, LS0/f;->toCuesWithTiming(LS0/i;LS0/r;Landroidx/media3/common/util/Consumer;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public parseToLegacySubtitle([BII)LS0/i;
    .locals 17

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    :try_start_0
    iget-object v2, v1, LY0/f;->a:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 6
    .line 7
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    new-instance v4, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v7, Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v8, Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance v2, LY0/g;

    .line 27
    .line 28
    invoke-direct {v2, v0}, LY0/g;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v7, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 35
    .line 36
    move-object/from16 v2, p1

    .line 37
    .line 38
    move/from16 v5, p2

    .line 39
    .line 40
    move/from16 v6, p3

    .line 41
    .line 42
    invoke-direct {v0, v2, v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 43
    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-interface {v3, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    new-instance v9, Ljava/util/ArrayDeque;

    .line 50
    .line 51
    invoke-direct {v9}, Ljava/util/ArrayDeque;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    sget-object v5, LY0/f;->i:LY0/d;

    .line 59
    .line 60
    const/16 v6, 0xf

    .line 61
    .line 62
    const/4 v10, 0x0

    .line 63
    move v11, v10

    .line 64
    move v10, v6

    .line 65
    move-object v6, v5

    .line 66
    move-object v5, v2

    .line 67
    :goto_0
    const/4 v12, 0x1

    .line 68
    if-eq v0, v12, :cond_a

    .line 69
    .line 70
    invoke-virtual {v9}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v12

    .line 74
    check-cast v12, LY0/c;

    .line 75
    .line 76
    const/4 v14, 0x2

    .line 77
    if-nez v11, :cond_7

    .line 78
    .line 79
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v15
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    const-string v13, "tt"

    .line 84
    .line 85
    if-ne v0, v14, :cond_4

    .line 86
    .line 87
    :try_start_1
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_0

    .line 92
    .line 93
    invoke-static {v3}, LY0/f;->e(Lorg/xmlpull/v1/XmlPullParser;)LY0/d;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    invoke-static {v3}, LY0/f;->c(Lorg/xmlpull/v1/XmlPullParser;)I

    .line 98
    .line 99
    .line 100
    move-result v10

    .line 101
    invoke-static {v3}, LY0/f;->j(Lorg/xmlpull/v1/XmlPullParser;)LY0/e;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    :cond_0
    move-object/from16 v16, v6

    .line 106
    .line 107
    move-object v6, v5

    .line 108
    move v5, v10

    .line 109
    move-object/from16 v10, v16

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :catch_0
    move-exception v0

    .line 113
    goto/16 :goto_5

    .line 114
    .line 115
    :catch_1
    move-exception v0

    .line 116
    goto/16 :goto_6

    .line 117
    .line 118
    :goto_1
    invoke-static {v15}, LY0/f;->b(Ljava/lang/String;)Z

    .line 119
    .line 120
    .line 121
    move-result v0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 122
    const-string v13, "TtmlParser"

    .line 123
    .line 124
    if-nez v0, :cond_2

    .line 125
    .line 126
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    const-string v12, "Ignoring unsupported tag: "

    .line 132
    .line 133
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v12

    .line 140
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-static {v13, v0}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    :goto_2
    add-int/lit8 v11, v11, 0x1

    .line 151
    .line 152
    :cond_1
    :goto_3
    move-object/from16 v16, v10

    .line 153
    .line 154
    move v10, v5

    .line 155
    move-object v5, v6

    .line 156
    move-object/from16 v6, v16

    .line 157
    .line 158
    goto :goto_4

    .line 159
    :cond_2
    const-string v0, "head"

    .line 160
    .line 161
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    if-eqz v0, :cond_3

    .line 166
    .line 167
    invoke-static/range {v3 .. v8}, LY0/f;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;ILY0/e;Ljava/util/HashMap;Ljava/util/HashMap;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 168
    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_3
    :try_start_3
    invoke-static {v3, v12, v7, v10}, LY0/f;->g(Lorg/xmlpull/v1/XmlPullParser;LY0/c;Ljava/util/HashMap;LY0/d;)LY0/c;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-virtual {v9, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    if-eqz v12, :cond_1

    .line 179
    .line 180
    invoke-virtual {v12, v0}, LY0/c;->addChild(LY0/c;)V
    :try_end_3
    .catch Landroidx/media3/extractor/text/SubtitleDecoderException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 181
    .line 182
    .line 183
    goto :goto_3

    .line 184
    :catch_2
    move-exception v0

    .line 185
    :try_start_4
    const-string v12, "Suppressing parser error"

    .line 186
    .line 187
    invoke-static {v13, v12, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 188
    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_4
    const/4 v14, 0x4

    .line 192
    if-ne v0, v14, :cond_5

    .line 193
    .line 194
    invoke-static {v12}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    check-cast v0, LY0/c;

    .line 199
    .line 200
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v12

    .line 204
    invoke-static {v12}, LY0/c;->buildTextNode(Ljava/lang/String;)LY0/c;

    .line 205
    .line 206
    .line 207
    move-result-object v12

    .line 208
    invoke-virtual {v0, v12}, LY0/c;->addChild(LY0/c;)V

    .line 209
    .line 210
    .line 211
    goto :goto_4

    .line 212
    :cond_5
    const/4 v12, 0x3

    .line 213
    if-ne v0, v12, :cond_9

    .line 214
    .line 215
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    if-eqz v0, :cond_6

    .line 224
    .line 225
    new-instance v2, LY0/j;

    .line 226
    .line 227
    invoke-virtual {v9}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    check-cast v0, LY0/c;

    .line 232
    .line 233
    invoke-static {v0}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    check-cast v0, LY0/c;

    .line 238
    .line 239
    invoke-direct {v2, v0, v4, v7, v8}, LY0/j;-><init>(LY0/c;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 240
    .line 241
    .line 242
    :cond_6
    invoke-virtual {v9}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    goto :goto_4

    .line 246
    :cond_7
    if-ne v0, v14, :cond_8

    .line 247
    .line 248
    add-int/lit8 v11, v11, 0x1

    .line 249
    .line 250
    goto :goto_4

    .line 251
    :cond_8
    const/4 v12, 0x3

    .line 252
    if-ne v0, v12, :cond_9

    .line 253
    .line 254
    add-int/lit8 v11, v11, -0x1

    .line 255
    .line 256
    :cond_9
    :goto_4
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 257
    .line 258
    .line 259
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    goto/16 :goto_0

    .line 264
    .line 265
    :cond_a
    invoke-static {v2}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    check-cast v0, LS0/i;
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 270
    .line 271
    return-object v0

    .line 272
    :goto_5
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 273
    .line 274
    const-string v3, "Unexpected error when reading input."

    .line 275
    .line 276
    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 277
    .line 278
    .line 279
    throw v2

    .line 280
    :goto_6
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 281
    .line 282
    const-string v3, "Unable to decode source"

    .line 283
    .line 284
    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 285
    .line 286
    .line 287
    throw v2
.end method

.method public final synthetic reset()V
    .locals 0

    .line 1
    invoke-static {p0}, LS0/o;->b(LS0/s;)V

    return-void
.end method
