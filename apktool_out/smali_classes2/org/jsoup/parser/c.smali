.class public abstract Lorg/jsoup/parser/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lk6/a;

.field public b:Lorg/jsoup/parser/b;

.field public c:Lj6/h;

.field public d:Ljava/util/ArrayList;

.field public e:Ljava/lang/String;

.field public f:Lk6/o;

.field public g:Lorg/jsoup/parser/ParseErrorList;

.field public h:Lk6/d;

.field public final i:Lk6/m;

.field public final j:Lk6/l;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lk6/m;

    .line 5
    .line 6
    invoke-direct {v0}, Lk6/m;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/jsoup/parser/c;->i:Lk6/m;

    .line 10
    .line 11
    new-instance v0, Lk6/l;

    .line 12
    .line 13
    invoke-direct {v0}, Lk6/l;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lorg/jsoup/parser/c;->j:Lk6/l;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public abstract a()Lk6/d;
.end method

.method public currentElement()Lorg/jsoup/nodes/b;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/c;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lorg/jsoup/parser/c;->d:Ljava/util/ArrayList;

    .line 10
    .line 11
    add-int/lit8 v0, v0, -0x1

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lorg/jsoup/nodes/b;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    return-object v0
.end method

.method public initialiseParse(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;Lk6/d;)V
    .locals 1

    .line 1
    const-string v0, "String input must not be null"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lh6/k;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "BaseURI must not be null"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lh6/k;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lj6/h;

    .line 12
    .line 13
    invoke-direct {v0, p2}, Lj6/h;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lorg/jsoup/parser/c;->c:Lj6/h;

    .line 17
    .line 18
    iput-object p4, p0, Lorg/jsoup/parser/c;->h:Lk6/d;

    .line 19
    .line 20
    new-instance p4, Lk6/a;

    .line 21
    .line 22
    invoke-direct {p4, p1}, Lk6/a;-><init>(Ljava/io/Reader;)V

    .line 23
    .line 24
    .line 25
    iput-object p4, p0, Lorg/jsoup/parser/c;->a:Lk6/a;

    .line 26
    .line 27
    iput-object p3, p0, Lorg/jsoup/parser/c;->g:Lorg/jsoup/parser/ParseErrorList;

    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Lorg/jsoup/parser/c;->f:Lk6/o;

    .line 31
    .line 32
    new-instance p1, Lorg/jsoup/parser/b;

    .line 33
    .line 34
    iget-object p4, p0, Lorg/jsoup/parser/c;->a:Lk6/a;

    .line 35
    .line 36
    invoke-direct {p1, p4, p3}, Lorg/jsoup/parser/b;-><init>(Lk6/a;Lorg/jsoup/parser/ParseErrorList;)V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lorg/jsoup/parser/c;->b:Lorg/jsoup/parser/b;

    .line 40
    .line 41
    new-instance p1, Ljava/util/ArrayList;

    .line 42
    .line 43
    const/16 p3, 0x20

    .line 44
    .line 45
    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lorg/jsoup/parser/c;->d:Ljava/util/ArrayList;

    .line 49
    .line 50
    iput-object p2, p0, Lorg/jsoup/parser/c;->e:Ljava/lang/String;

    .line 51
    .line 52
    return-void
.end method

.method public abstract process(Lk6/o;)Z
.end method

.method public processEndTag(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/c;->f:Lk6/o;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/jsoup/parser/c;->j:Lk6/l;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    new-instance v0, Lk6/l;

    .line 8
    .line 9
    invoke-direct {v0}, Lk6/l;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lk6/n;->n(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/c;->process(Lk6/o;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    :cond_0
    invoke-virtual {v1}, Lk6/n;->p()Lk6/n;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1}, Lk6/n;->n(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v1}, Lorg/jsoup/parser/c;->process(Lk6/o;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    return p1
.end method

.method public processStartTag(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/c;->f:Lk6/o;

    iget-object v1, p0, Lorg/jsoup/parser/c;->i:Lk6/m;

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Lk6/m;

    invoke-direct {v0}, Lk6/m;-><init>()V

    invoke-virtual {v0, p1}, Lk6/n;->n(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/c;->process(Lk6/o;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {v1}, Lk6/m;->p()Lk6/n;

    invoke-virtual {v1, p1}, Lk6/n;->n(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/jsoup/parser/c;->process(Lk6/o;)Z

    move-result p1

    return p1
.end method

.method public processStartTag(Ljava/lang/String;Lj6/c;)Z
    .locals 2

    .line 4
    iget-object v0, p0, Lorg/jsoup/parser/c;->f:Lk6/o;

    iget-object v1, p0, Lorg/jsoup/parser/c;->i:Lk6/m;

    if-ne v0, v1, :cond_0

    .line 5
    new-instance v0, Lk6/m;

    invoke-direct {v0}, Lk6/m;-><init>()V

    .line 6
    iput-object p1, v0, Lk6/n;->b:Ljava/lang/String;

    .line 7
    iput-object p2, v0, Lk6/n;->j:Lj6/c;

    .line 8
    invoke-static {p1}, Li6/b;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lk6/n;->c:Ljava/lang/String;

    .line 9
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/c;->process(Lk6/o;)Z

    move-result p1

    return p1

    .line 10
    :cond_0
    invoke-virtual {v1}, Lk6/m;->p()Lk6/n;

    .line 11
    iput-object p1, v1, Lk6/n;->b:Ljava/lang/String;

    .line 12
    iput-object p2, v1, Lk6/n;->j:Lj6/c;

    .line 13
    invoke-static {p1}, Li6/b;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lk6/n;->c:Ljava/lang/String;

    .line 14
    invoke-virtual {p0, v1}, Lorg/jsoup/parser/c;->process(Lk6/o;)Z

    move-result p1

    return p1
.end method

.method public runParser()V
    .locals 7

    .line 1
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/c;->b:Lorg/jsoup/parser/b;

    .line 2
    .line 3
    :goto_0
    iget-boolean v1, v0, Lorg/jsoup/parser/b;->e:Z

    .line 4
    .line 5
    if-nez v1, :cond_1

    .line 6
    .line 7
    iget-object v1, v0, Lorg/jsoup/parser/b;->c:Lorg/jsoup/parser/TokeniserState;

    .line 8
    .line 9
    iget-object v2, v0, Lorg/jsoup/parser/b;->a:Lk6/a;

    .line 10
    .line 11
    invoke-virtual {v1, v0, v2}, Lorg/jsoup/parser/TokeniserState;->f(Lorg/jsoup/parser/b;Lk6/a;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    iget-object v1, v0, Lorg/jsoup/parser/b;->g:Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    iget-object v3, v0, Lorg/jsoup/parser/b;->l:Lk6/h;

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    const/4 v5, 0x0

    .line 25
    if-lez v2, :cond_2

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iput-object v4, v0, Lorg/jsoup/parser/b;->f:Ljava/lang/String;

    .line 39
    .line 40
    iput-object v2, v3, Lk6/h;->b:Ljava/lang/String;

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    iget-object v1, v0, Lorg/jsoup/parser/b;->f:Ljava/lang/String;

    .line 44
    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    iput-object v1, v3, Lk6/h;->b:Ljava/lang/String;

    .line 48
    .line 49
    iput-object v4, v0, Lorg/jsoup/parser/b;->f:Ljava/lang/String;

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_3
    iput-boolean v5, v0, Lorg/jsoup/parser/b;->e:Z

    .line 53
    .line 54
    iget-object v3, v0, Lorg/jsoup/parser/b;->d:Lk6/o;

    .line 55
    .line 56
    :goto_1
    invoke-virtual {p0, v3}, Lorg/jsoup/parser/c;->process(Lk6/o;)Z

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3}, Lk6/o;->f()Lk6/o;

    .line 60
    .line 61
    .line 62
    iget-object v0, v3, Lk6/o;->a:Lorg/jsoup/parser/Token$TokenType;

    .line 63
    .line 64
    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->n:Lorg/jsoup/parser/Token$TokenType;

    .line 65
    .line 66
    if-ne v0, v1, :cond_0

    .line 67
    .line 68
    return-void
.end method
