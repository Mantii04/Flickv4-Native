.class public final Lj6/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll6/V;


# instance fields
.field public final synthetic a:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj6/j;->a:Ljava/lang/StringBuilder;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public head(Lj6/p;I)V
    .locals 2

    .line 1
    instance-of p2, p1, Lj6/r;

    .line 2
    .line 3
    iget-object v0, p0, Lj6/j;->a:Ljava/lang/StringBuilder;

    .line 4
    .line 5
    if-eqz p2, :cond_2

    .line 6
    .line 7
    check-cast p1, Lj6/r;

    .line 8
    .line 9
    invoke-virtual {p1}, Lj6/r;->getWholeText()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    iget-object v1, p1, Lj6/p;->b:Lj6/p;

    .line 14
    .line 15
    invoke-static {v1}, Lorg/jsoup/nodes/b;->e(Lj6/p;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    instance-of p1, p1, Lj6/e;

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {v0}, Lj6/r;->e(Ljava/lang/StringBuilder;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    invoke-static {v0, p2, p1}, Lh6/j;->appendNormalisedWhitespace(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_2
    instance-of p2, p1, Lorg/jsoup/nodes/b;

    .line 39
    .line 40
    if-eqz p2, :cond_4

    .line 41
    .line 42
    check-cast p1, Lorg/jsoup/nodes/b;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    if-lez p2, :cond_4

    .line 49
    .line 50
    invoke-virtual {p1}, Lorg/jsoup/nodes/b;->isBlock()Z

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    if-nez p2, :cond_3

    .line 55
    .line 56
    iget-object p1, p1, Lorg/jsoup/nodes/b;->f:Lk6/f;

    .line 57
    .line 58
    invoke-virtual {p1}, Lk6/f;->getName()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const-string p2, "br"

    .line 63
    .line 64
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_4

    .line 69
    .line 70
    :cond_3
    invoke-static {v0}, Lj6/r;->e(Ljava/lang/StringBuilder;)Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-nez p1, :cond_4

    .line 75
    .line 76
    const/16 p1, 0x20

    .line 77
    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    :cond_4
    return-void
.end method

.method public tail(Lj6/p;I)V
    .locals 0

    .line 1
    instance-of p2, p1, Lorg/jsoup/nodes/b;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    move-object p2, p1

    .line 6
    check-cast p2, Lorg/jsoup/nodes/b;

    .line 7
    .line 8
    invoke-virtual {p2}, Lorg/jsoup/nodes/b;->isBlock()Z

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Lj6/p;->nextSibling()Lj6/p;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    instance-of p1, p1, Lj6/r;

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Lj6/j;->a:Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-static {p1}, Lj6/r;->e(Ljava/lang/StringBuilder;)Z

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-nez p2, :cond_0

    .line 29
    .line 30
    const/16 p2, 0x20

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method
