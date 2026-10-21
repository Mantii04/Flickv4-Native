.class Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ASCTIME_DATE:Ljava/lang/String; = "(Mon|Tue|Wed|Thu|Fri|Sat|Sun) ((Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec) ( |\\d)\\d) (\\d{2}:\\d{2}:\\d{2}) \\d{4}"

.field private static final DATE1:Ljava/lang/String; = "\\d{2} (Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec) \\d{4}"

.field private static final DATE2:Ljava/lang/String; = "\\d{2}-(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)-\\d{2}"

.field private static final DATE3:Ljava/lang/String; = "(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec) ( |\\d)\\d"

.field private static final DOMAINLABEL:Ljava/lang/String; = "\\p{Alnum}([\\p{Alnum}-]*\\p{Alnum})?"

.field private static final HOST:Ljava/lang/String; = "((\\p{Alnum}([\\p{Alnum}-]*\\p{Alnum})?\\.)*\\p{Alpha}([\\p{Alnum}-]*\\p{Alnum})?\\.?)|(\\d+\\.\\d+\\.\\d+\\.\\d+)"

.field private static final HOSTNAME:Ljava/lang/String; = "(\\p{Alnum}([\\p{Alnum}-]*\\p{Alnum})?\\.)*\\p{Alpha}([\\p{Alnum}-]*\\p{Alnum})?\\.?"

.field private static final HOSTPORT:Ljava/lang/String; = "(((\\p{Alnum}([\\p{Alnum}-]*\\p{Alnum})?\\.)*\\p{Alpha}([\\p{Alnum}-]*\\p{Alnum})?\\.?)|(\\d+\\.\\d+\\.\\d+\\.\\d+))(\\:\\d*)?"

.field private static final HOSTPORT_PATTERN:Ljava/util/regex/Pattern;

.field private static final HTTP_DATE:Ljava/lang/String; = "((Mon|Tue|Wed|Thu|Fri|Sat|Sun), (\\d{2} (Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec) \\d{4}) (\\d{2}:\\d{2}:\\d{2}) GMT)|((Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|Sunday), (\\d{2}-(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)-\\d{2}) (\\d{2}:\\d{2}:\\d{2}) GMT)|((Mon|Tue|Wed|Thu|Fri|Sat|Sun) ((Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec) ( |\\d)\\d) (\\d{2}:\\d{2}:\\d{2}) \\d{4})"

.field private static final IPV4ADDRESS:Ljava/lang/String; = "\\d+\\.\\d+\\.\\d+\\.\\d+"

.field private static final MONTH:Ljava/lang/String; = "Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec"

.field private static final PORT:Ljava/lang/String; = "\\d*"

.field private static final RFC1123_DATE:Ljava/lang/String; = "(Mon|Tue|Wed|Thu|Fri|Sat|Sun), (\\d{2} (Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec) \\d{4}) (\\d{2}:\\d{2}:\\d{2}) GMT"

.field private static final RFC850_DATE:Ljava/lang/String; = "(Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|Sunday), (\\d{2}-(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)-\\d{2}) (\\d{2}:\\d{2}:\\d{2}) GMT"

.field private static final TIME:Ljava/lang/String; = "\\d{2}:\\d{2}:\\d{2}"

.field private static final TOPLABEL:Ljava/lang/String; = "\\p{Alpha}([\\p{Alnum}-]*\\p{Alnum})?"

.field private static final WARN_DATE:Ljava/lang/String; = "\"(((Mon|Tue|Wed|Thu|Fri|Sat|Sun), (\\d{2} (Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec) \\d{4}) (\\d{2}:\\d{2}:\\d{2}) GMT)|((Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|Sunday), (\\d{2}-(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)-\\d{2}) (\\d{2}:\\d{2}:\\d{2}) GMT)|((Mon|Tue|Wed|Thu|Fri|Sat|Sun) ((Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec) ( |\\d)\\d) (\\d{2}:\\d{2}:\\d{2}) \\d{4}))\""

.field private static final WARN_DATE_PATTERN:Ljava/util/regex/Pattern;

.field private static final WEEKDAY:Ljava/lang/String; = "Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|Sunday"

.field private static final WKDAY:Ljava/lang/String; = "Mon|Tue|Wed|Thu|Fri|Sat|Sun"


# instance fields
.field private init_offs:I

.field private offs:I

.field private final src:Ljava/lang/String;

.field private warnAgent:Ljava/lang/String;

.field private warnCode:I

.field private warnDate:Ljava/util/Date;

.field private warnText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "(((\\p{Alnum}([\\p{Alnum}-]*\\p{Alnum})?\\.)*\\p{Alpha}([\\p{Alnum}-]*\\p{Alnum})?\\.?)|(\\d+\\.\\d+\\.\\d+\\.\\d+))(\\:\\d*)?"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->HOSTPORT_PATTERN:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    const-string v0, "\"(((Mon|Tue|Wed|Thu|Fri|Sat|Sun), (\\d{2} (Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec) \\d{4}) (\\d{2}:\\d{2}:\\d{2}) GMT)|((Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|Sunday), (\\d{2}-(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)-\\d{2}) (\\d{2}:\\d{2}:\\d{2}) GMT)|((Mon|Tue|Wed|Thu|Fri|Sat|Sun) ((Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec) ( |\\d)\\d) (\\d{2}:\\d{2}:\\d{2}) \\d{4}))\""

    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->WARN_DATE_PATTERN:Ljava/util/regex/Pattern;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p2, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->init_offs:I

    iput p2, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    .line 4
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->consumeWarnValue()V

    return-void
.end method

.method public static getWarningValues(Lcz/msebera/android/httpclient/Header;)[Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Lcz/msebera/android/httpclient/NameValuePair;->getValue()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const/4 v1, 0x0

    .line 11
    move v2, v1

    .line 12
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-ge v2, v3, :cond_1

    .line 17
    .line 18
    :try_start_0
    new-instance v3, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;

    .line 19
    .line 20
    invoke-direct {v3, p0, v2}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;-><init>(Ljava/lang/String;I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    iget v2, v3, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    const/16 v3, 0x2c

    .line 30
    .line 31
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    const/4 v3, -0x1

    .line 36
    if-ne v2, v3, :cond_0

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    :goto_1
    new-array p0, v1, [Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;

    .line 43
    .line 44
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    check-cast p0, [Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;

    .line 49
    .line 50
    return-object p0
.end method

.method private isChar(C)Z
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x7f

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isControl(C)Z
    .locals 1

    const/16 v0, 0x7f

    if-eq p1, v0, :cond_1

    if-ltz p1, :cond_0

    const/16 v0, 0x1f

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private isSeparator(C)Z
    .locals 1

    const/16 v0, 0x28

    if-eq p1, v0, :cond_1

    const/16 v0, 0x29

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3e

    if-eq p1, v0, :cond_1

    const/16 v0, 0x40

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x5c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x22

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_1

    const/16 v0, 0x5b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x5d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3f

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private isTokenChar(C)Z
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->isChar(C)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->isControl(C)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->isSeparator(C)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    return p1

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    return p1
.end method

.method private parseError()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    .line 2
    .line 3
    iget v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->init_offs:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 10
    .line 11
    const-string v2, "Bad warn code \""

    .line 12
    .line 13
    const-string v3, "\""

    .line 14
    .line 15
    invoke-static {v2, v0, v3}, LA/i;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw v1
.end method


# virtual methods
.method public consumeCharacter(C)V
    .locals 2

    .line 1
    iget v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-gt v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    .line 14
    .line 15
    iget v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eq p1, v0, :cond_1

    .line 22
    .line 23
    :cond_0
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->parseError()V

    .line 24
    .line 25
    .line 26
    :cond_1
    iget p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    .line 27
    .line 28
    add-int/lit8 p1, p1, 0x1

    .line 29
    .line 30
    iput p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    .line 31
    .line 32
    return-void
.end method

.method public consumeHostPort()V
    .locals 3

    .line 1
    sget-object v0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->HOSTPORT_PATTERN:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->parseError()V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->parseError()V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    add-int/2addr v0, v1

    .line 40
    iput v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    .line 41
    .line 42
    return-void
.end method

.method public consumeLinearWhitespace()V
    .locals 4

    .line 1
    :goto_0
    iget v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    .line 2
    .line 3
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ge v0, v1, :cond_3

    .line 10
    .line 11
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    .line 12
    .line 13
    iget v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/16 v1, 0x9

    .line 20
    .line 21
    if-eq v0, v1, :cond_2

    .line 22
    .line 23
    const/16 v2, 0xd

    .line 24
    .line 25
    const/16 v3, 0x20

    .line 26
    .line 27
    if-eq v0, v2, :cond_0

    .line 28
    .line 29
    if-eq v0, v3, :cond_2

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    iget v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    .line 33
    .line 34
    add-int/lit8 v0, v0, 0x2

    .line 35
    .line 36
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-ge v0, v2, :cond_3

    .line 43
    .line 44
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    .line 45
    .line 46
    iget v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    .line 47
    .line 48
    add-int/lit8 v2, v2, 0x1

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    const/16 v2, 0xa

    .line 55
    .line 56
    if-ne v0, v2, :cond_3

    .line 57
    .line 58
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    .line 59
    .line 60
    iget v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    .line 61
    .line 62
    add-int/lit8 v2, v2, 0x2

    .line 63
    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eq v0, v3, :cond_1

    .line 69
    .line 70
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    .line 71
    .line 72
    iget v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    .line 73
    .line 74
    add-int/lit8 v2, v2, 0x2

    .line 75
    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eq v0, v1, :cond_1

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_1
    iget v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    .line 84
    .line 85
    add-int/lit8 v0, v0, 0x2

    .line 86
    .line 87
    iput v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    .line 88
    .line 89
    :cond_2
    iget v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    .line 90
    .line 91
    add-int/lit8 v0, v0, 0x1

    .line 92
    .line 93
    iput v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_3
    :goto_1
    return-void
.end method

.method public consumeQuotedString()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    .line 2
    .line 3
    iget v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x22

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->parseError()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    add-int/2addr v0, v2

    .line 20
    iput v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    :goto_0
    iget v3, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    .line 24
    .line 25
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-ge v3, v4, :cond_4

    .line 32
    .line 33
    if-nez v0, :cond_4

    .line 34
    .line 35
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    .line 36
    .line 37
    iget v4, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    .line 38
    .line 39
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    iget v4, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    .line 44
    .line 45
    add-int/2addr v4, v2

    .line 46
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-ge v4, v5, :cond_1

    .line 53
    .line 54
    const/16 v4, 0x5c

    .line 55
    .line 56
    if-ne v3, v4, :cond_1

    .line 57
    .line 58
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    .line 59
    .line 60
    iget v5, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    .line 61
    .line 62
    add-int/2addr v5, v2

    .line 63
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    invoke-direct {p0, v4}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->isChar(C)Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-eqz v4, :cond_1

    .line 72
    .line 73
    iget v3, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    .line 74
    .line 75
    add-int/lit8 v3, v3, 0x2

    .line 76
    .line 77
    iput v3, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    if-ne v3, v1, :cond_2

    .line 81
    .line 82
    iget v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    .line 83
    .line 84
    add-int/2addr v0, v2

    .line 85
    iput v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    .line 86
    .line 87
    move v0, v2

    .line 88
    goto :goto_0

    .line 89
    :cond_2
    if-eq v3, v1, :cond_3

    .line 90
    .line 91
    invoke-direct {p0, v3}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->isControl(C)Z

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    if-nez v3, :cond_3

    .line 96
    .line 97
    iget v3, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    .line 98
    .line 99
    add-int/2addr v3, v2

    .line 100
    iput v3, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_3
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->parseError()V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_4
    if-nez v0, :cond_5

    .line 108
    .line 109
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->parseError()V

    .line 110
    .line 111
    .line 112
    :cond_5
    return-void
.end method

.method public consumeToken()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    .line 2
    .line 3
    iget v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->isTokenChar(C)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->parseError()V

    .line 16
    .line 17
    .line 18
    :cond_0
    :goto_0
    iget v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    .line 19
    .line 20
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-ge v0, v1, :cond_2

    .line 27
    .line 28
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    .line 29
    .line 30
    iget v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->isTokenChar(C)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    iget v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    .line 44
    .line 45
    add-int/lit8 v0, v0, 0x1

    .line 46
    .line 47
    iput v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    :goto_1
    return-void
.end method

.method public consumeWarnAgent()V
    .locals 4

    .line 1
    iget v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    .line 2
    .line 3
    const/16 v1, 0x20

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->consumeHostPort()V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    .line 9
    .line 10
    iget v3, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    .line 11
    .line 12
    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iput-object v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->warnAgent:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->consumeCharacter(C)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catch_0
    iput v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    .line 23
    .line 24
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->consumeToken()V

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    .line 28
    .line 29
    iget v3, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    .line 30
    .line 31
    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->warnAgent:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {p0, v1}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->consumeCharacter(C)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public consumeWarnCode()V
    .locals 3

    .line 1
    iget v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-gt v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    .line 14
    .line 15
    iget v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    .line 28
    .line 29
    iget v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    .line 30
    .line 31
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    .line 44
    .line 45
    iget v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    .line 46
    .line 47
    add-int/lit8 v1, v1, 0x2

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_0

    .line 58
    .line 59
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    .line 60
    .line 61
    iget v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    .line 62
    .line 63
    add-int/lit8 v1, v1, 0x3

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    const/16 v1, 0x20

    .line 70
    .line 71
    if-eq v0, v1, :cond_1

    .line 72
    .line 73
    :cond_0
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->parseError()V

    .line 74
    .line 75
    .line 76
    :cond_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    .line 77
    .line 78
    iget v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    .line 79
    .line 80
    add-int/lit8 v2, v1, 0x3

    .line 81
    .line 82
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    iput v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->warnCode:I

    .line 91
    .line 92
    iget v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    .line 93
    .line 94
    add-int/lit8 v0, v0, 0x4

    .line 95
    .line 96
    iput v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    .line 97
    .line 98
    return-void
.end method

.method public consumeWarnDate()V
    .locals 3

    .line 1
    iget v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    .line 2
    .line 3
    sget-object v1, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->WARN_DATE_PATTERN:Ljava/util/regex/Pattern;

    .line 4
    .line 5
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->parseError()V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    add-int/2addr v1, v2

    .line 31
    iput v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    .line 32
    .line 33
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    .line 34
    .line 35
    add-int/lit8 v0, v0, 0x1

    .line 36
    .line 37
    add-int/lit8 v1, v1, -0x1

    .line 38
    .line 39
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0}, Lcz/msebera/android/httpclient/client/utils/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->warnDate:Ljava/util/Date;

    .line 48
    .line 49
    return-void
.end method

.method public consumeWarnText()V
    .locals 3

    .line 1
    iget v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->consumeQuotedString()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    .line 7
    .line 8
    iget v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    .line 9
    .line 10
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->warnText:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method public consumeWarnValue()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->consumeLinearWhitespace()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->consumeWarnCode()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->consumeWarnAgent()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->consumeWarnText()V

    .line 11
    .line 12
    .line 13
    iget v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    .line 14
    .line 15
    add-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-ge v0, v1, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    .line 26
    .line 27
    iget v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/16 v1, 0x20

    .line 34
    .line 35
    if-ne v0, v1, :cond_0

    .line 36
    .line 37
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    .line 38
    .line 39
    iget v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    .line 40
    .line 41
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    const/16 v2, 0x22

    .line 48
    .line 49
    if-ne v0, v2, :cond_0

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->consumeCharacter(C)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->consumeWarnDate()V

    .line 55
    .line 56
    .line 57
    :cond_0
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->consumeLinearWhitespace()V

    .line 58
    .line 59
    .line 60
    iget v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->offs:I

    .line 61
    .line 62
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eq v0, v1, :cond_1

    .line 69
    .line 70
    const/16 v0, 0x2c

    .line 71
    .line 72
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->consumeCharacter(C)V

    .line 73
    .line 74
    .line 75
    :cond_1
    return-void
.end method

.method public getWarnAgent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->warnAgent:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWarnCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->warnCode:I

    .line 2
    .line 3
    return v0
.end method

.method public getWarnDate()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->warnDate:Ljava/util/Date;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWarnText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->warnText:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x1

    .line 4
    const/4 v3, 0x0

    .line 5
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->warnDate:Ljava/util/Date;

    .line 6
    .line 7
    if-eqz v4, :cond_0

    .line 8
    .line 9
    iget v4, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->warnCode:I

    .line 10
    .line 11
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->warnAgent:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->warnText:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->warnDate:Ljava/util/Date;

    .line 20
    .line 21
    invoke-static {v7}, Lcz/msebera/android/httpclient/client/utils/DateUtils;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    const/4 v8, 0x4

    .line 26
    new-array v8, v8, [Ljava/lang/Object;

    .line 27
    .line 28
    aput-object v4, v8, v3

    .line 29
    .line 30
    aput-object v5, v8, v2

    .line 31
    .line 32
    aput-object v6, v8, v1

    .line 33
    .line 34
    aput-object v7, v8, v0

    .line 35
    .line 36
    const-string v0, "%d %s %s \"%s\""

    .line 37
    .line 38
    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0

    .line 43
    :cond_0
    iget v4, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->warnCode:I

    .line 44
    .line 45
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->warnAgent:Ljava/lang/String;

    .line 50
    .line 51
    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->warnText:Ljava/lang/String;

    .line 52
    .line 53
    new-array v0, v0, [Ljava/lang/Object;

    .line 54
    .line 55
    aput-object v4, v0, v3

    .line 56
    .line 57
    aput-object v5, v0, v2

    .line 58
    .line 59
    aput-object v6, v0, v1

    .line 60
    .line 61
    const-string v1, "%d %s %s"

    .line 62
    .line 63
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    return-object v0
.end method
