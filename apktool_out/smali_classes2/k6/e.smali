.class public final Lk6/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lorg/jsoup/parser/c;

.field public b:Lorg/jsoup/parser/ParseErrorList;

.field public final c:Lk6/d;


# direct methods
.method public constructor <init>(Lorg/jsoup/parser/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lk6/e;->a:Lorg/jsoup/parser/c;

    .line 5
    .line 6
    invoke-virtual {p1}, Lorg/jsoup/parser/c;->a()Lk6/d;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lk6/e;->c:Lk6/d;

    .line 11
    .line 12
    return-void
.end method

.method public static htmlParser()Lk6/e;
    .locals 2

    .line 1
    new-instance v0, Lk6/e;

    .line 2
    .line 3
    new-instance v1, Lorg/jsoup/parser/a;

    .line 4
    .line 5
    invoke-direct {v1}, Lorg/jsoup/parser/a;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lk6/e;-><init>(Lorg/jsoup/parser/c;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/String;)Lj6/h;
    .locals 3

    .line 1
    new-instance v0, Lorg/jsoup/parser/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/jsoup/parser/a;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/io/StringReader;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lorg/jsoup/parser/ParseErrorList;->noTracking()Lorg/jsoup/parser/ParseErrorList;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    sget-object v2, Lk6/d;->c:Lk6/d;

    .line 16
    .line 17
    invoke-virtual {v0, v1, p1, p0, v2}, Lorg/jsoup/parser/a;->initialiseParse(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;Lk6/d;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lorg/jsoup/parser/c;->runParser()V

    .line 21
    .line 22
    .line 23
    iget-object p0, v0, Lorg/jsoup/parser/c;->c:Lj6/h;

    .line 24
    .line 25
    return-object p0
.end method

.method public static unescapeEntities(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Lorg/jsoup/parser/b;

    .line 2
    .line 3
    new-instance v1, Lk6/a;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lk6/a;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lorg/jsoup/parser/ParseErrorList;->noTracking()Lorg/jsoup/parser/ParseErrorList;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-direct {v0, v1, p0}, Lorg/jsoup/parser/b;-><init>(Lk6/a;Lorg/jsoup/parser/ParseErrorList;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lh6/j;->stringBuilder()Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :cond_0
    :goto_0
    iget-object v1, v0, Lorg/jsoup/parser/b;->a:Lk6/a;

    .line 20
    .line 21
    invoke-virtual {v1}, Lk6/a;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_3

    .line 26
    .line 27
    const/16 v2, 0x26

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Lk6/a;->consumeTo(C)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Lk6/a;->h(C)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_0

    .line 41
    .line 42
    invoke-virtual {v1}, Lk6/a;->c()C

    .line 43
    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-virtual {v0, v1, p1}, Lorg/jsoup/parser/b;->c(Ljava/lang/Character;Z)[I

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    array-length v3, v1

    .line 53
    if-nez v3, :cond_1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    const/4 v2, 0x0

    .line 57
    aget v2, v1, v2

    .line 58
    .line 59
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    array-length v2, v1

    .line 63
    const/4 v3, 0x2

    .line 64
    if-ne v2, v3, :cond_0

    .line 65
    .line 66
    const/4 v2, 0x1

    .line 67
    aget v1, v1, v2

    .line 68
    .line 69
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    :goto_1
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    return-object p0
.end method

.method public static xmlParser()Lk6/e;
    .locals 2

    .line 1
    new-instance v0, Lk6/e;

    .line 2
    .line 3
    new-instance v1, Lk6/q;

    .line 4
    .line 5
    invoke-direct {v1}, Lk6/q;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lk6/e;-><init>(Lorg/jsoup/parser/c;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method


# virtual methods
.method public isTrackErrors()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public parseInput(Ljava/io/Reader;Ljava/lang/String;)Lj6/h;
    .locals 3

    .line 6
    invoke-virtual {p0}, Lk6/e;->isTrackErrors()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/jsoup/parser/ParseErrorList;->tracking(I)Lorg/jsoup/parser/ParseErrorList;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/jsoup/parser/ParseErrorList;->noTracking()Lorg/jsoup/parser/ParseErrorList;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lk6/e;->b:Lorg/jsoup/parser/ParseErrorList;

    .line 7
    iget-object v1, p0, Lk6/e;->a:Lorg/jsoup/parser/c;

    iget-object v2, p0, Lk6/e;->c:Lk6/d;

    .line 8
    invoke-virtual {v1, p1, p2, v0, v2}, Lorg/jsoup/parser/c;->initialiseParse(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;Lk6/d;)V

    .line 9
    invoke-virtual {v1}, Lorg/jsoup/parser/c;->runParser()V

    .line 10
    iget-object p1, v1, Lorg/jsoup/parser/c;->c:Lj6/h;

    return-object p1
.end method

.method public parseInput(Ljava/lang/String;Ljava/lang/String;)Lj6/h;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lk6/e;->isTrackErrors()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/jsoup/parser/ParseErrorList;->tracking(I)Lorg/jsoup/parser/ParseErrorList;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/jsoup/parser/ParseErrorList;->noTracking()Lorg/jsoup/parser/ParseErrorList;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lk6/e;->b:Lorg/jsoup/parser/ParseErrorList;

    .line 2
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lk6/e;->b:Lorg/jsoup/parser/ParseErrorList;

    iget-object v1, p0, Lk6/e;->c:Lk6/d;

    iget-object v2, p0, Lk6/e;->a:Lorg/jsoup/parser/c;

    .line 3
    invoke-virtual {v2, v0, p2, p1, v1}, Lorg/jsoup/parser/c;->initialiseParse(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;Lk6/d;)V

    .line 4
    invoke-virtual {v2}, Lorg/jsoup/parser/c;->runParser()V

    .line 5
    iget-object p1, v2, Lorg/jsoup/parser/c;->c:Lj6/h;

    return-object p1
.end method
