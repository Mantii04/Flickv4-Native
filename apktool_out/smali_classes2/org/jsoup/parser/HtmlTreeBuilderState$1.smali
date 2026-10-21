.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$1;
.super Lorg/jsoup/parser/HtmlTreeBuilderState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/HtmlTreeBuilderState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "Initial"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final e(Lk6/o;Lorg/jsoup/parser/a;)Z
    .locals 6

    .line 1
    invoke-static {p1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->b(Lk6/o;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p1}, Lk6/o;->a()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    check-cast p1, Lk6/i;

    .line 16
    .line 17
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/a;->p(Lk6/i;)V

    .line 18
    .line 19
    .line 20
    return v1

    .line 21
    :cond_1
    invoke-virtual {p1}, Lk6/o;->b()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->e:Lorg/jsoup/parser/HtmlTreeBuilderState$2;

    .line 26
    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    check-cast p1, Lk6/j;

    .line 30
    .line 31
    new-instance v0, Lj6/i;

    .line 32
    .line 33
    iget-object v3, p2, Lorg/jsoup/parser/c;->h:Lk6/d;

    .line 34
    .line 35
    iget-object v4, p1, Lk6/j;->b:Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {v3, v4}, Lk6/d;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    iget-object v4, p1, Lk6/j;->d:Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {p1}, Lk6/j;->getSystemIdentifier()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-direct {v0, v3, v4, v5}, Lj6/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v3, p1, Lk6/j;->c:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v0, v3}, Lj6/i;->setPubSysKey(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object v3, p2, Lorg/jsoup/parser/c;->c:Lj6/h;

    .line 64
    .line 65
    invoke-virtual {v3, v0}, Lorg/jsoup/nodes/b;->appendChild(Lj6/p;)Lorg/jsoup/nodes/b;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Lk6/j;->isForceQuirks()Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-eqz p1, :cond_2

    .line 73
    .line 74
    iget-object p1, p2, Lorg/jsoup/parser/c;->c:Lj6/h;

    .line 75
    .line 76
    sget-object v0, Lorg/jsoup/nodes/Document$QuirksMode;->e:Lorg/jsoup/nodes/Document$QuirksMode;

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Lj6/h;->quirksMode(Lorg/jsoup/nodes/Document$QuirksMode;)Lj6/h;

    .line 79
    .line 80
    .line 81
    :cond_2
    iput-object v2, p2, Lorg/jsoup/parser/a;->k:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 82
    .line 83
    return v1

    .line 84
    :cond_3
    iput-object v2, p2, Lorg/jsoup/parser/a;->k:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 85
    .line 86
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/a;->process(Lk6/o;)Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    return p1
.end method
