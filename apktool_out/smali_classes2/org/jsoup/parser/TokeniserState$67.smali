.class final enum Lorg/jsoup/parser/TokeniserState$67;
.super Lorg/jsoup/parser/TokeniserState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/TokeniserState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "CdataSection"

    .line 2
    .line 3
    const/16 v1, 0x42

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final f(Lorg/jsoup/parser/b;Lk6/a;)V
    .locals 5

    .line 1
    const-string v0, "]]>"

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Lk6/a;->k(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, -0x1

    .line 8
    iget-object v3, p2, Lk6/a;->h:[Ljava/lang/String;

    .line 9
    .line 10
    iget-object v4, p2, Lk6/a;->a:[C

    .line 11
    .line 12
    if-eq v1, v2, :cond_0

    .line 13
    .line 14
    iget v2, p2, Lk6/a;->e:I

    .line 15
    .line 16
    invoke-static {v4, v3, v2, v1}, Lk6/a;->b([C[Ljava/lang/String;II)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iget v3, p2, Lk6/a;->e:I

    .line 21
    .line 22
    add-int/2addr v3, v1

    .line 23
    iput v3, p2, Lk6/a;->e:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p2}, Lk6/a;->a()V

    .line 27
    .line 28
    .line 29
    iget v1, p2, Lk6/a;->e:I

    .line 30
    .line 31
    iget v2, p2, Lk6/a;->c:I

    .line 32
    .line 33
    sub-int/2addr v2, v1

    .line 34
    invoke-static {v4, v3, v1, v2}, Lk6/a;->b([C[Ljava/lang/String;II)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    iget v1, p2, Lk6/a;->c:I

    .line 39
    .line 40
    iput v1, p2, Lk6/a;->e:I

    .line 41
    .line 42
    :goto_0
    iget-object v1, p1, Lorg/jsoup/parser/b;->h:Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, v0}, Lk6/a;->f(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_2

    .line 52
    .line 53
    invoke-virtual {p2}, Lk6/a;->isEmpty()Z

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    if-eqz p2, :cond_1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    return-void

    .line 61
    :cond_2
    :goto_1
    new-instance p2, Lk6/g;

    .line 62
    .line 63
    iget-object v0, p1, Lorg/jsoup/parser/b;->h:Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-direct {p2}, Lk6/h;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object v0, p2, Lk6/h;->b:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/b;->h(Lk6/o;)V

    .line 75
    .line 76
    .line 77
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->b:Lorg/jsoup/parser/TokeniserState$1;

    .line 78
    .line 79
    iput-object p2, p1, Lorg/jsoup/parser/b;->c:Lorg/jsoup/parser/TokeniserState;

    .line 80
    .line 81
    return-void
.end method
