.class public final Lo2/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lo2/g;

.field public final b:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lo2/g;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Lo2/g;-><init>(Lo2/q;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lo2/h;->a:Lo2/g;

    .line 11
    .line 12
    new-instance v0, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lo2/h;->b:Ljava/util/HashMap;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public get(Lo2/q;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo2/q;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lo2/h;->b:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lo2/g;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    new-instance v1, Lo2/g;

    .line 12
    .line 13
    invoke-direct {v1, p1}, Lo2/g;-><init>(Lo2/q;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-interface {p1}, Lo2/q;->offer()V

    .line 21
    .line 22
    .line 23
    :goto_0
    iget-object p1, v1, Lo2/g;->d:Lo2/g;

    .line 24
    .line 25
    iget-object v0, v1, Lo2/g;->c:Lo2/g;

    .line 26
    .line 27
    iput-object v0, p1, Lo2/g;->c:Lo2/g;

    .line 28
    .line 29
    iget-object v0, v1, Lo2/g;->c:Lo2/g;

    .line 30
    .line 31
    iput-object p1, v0, Lo2/g;->d:Lo2/g;

    .line 32
    .line 33
    iget-object p1, p0, Lo2/h;->a:Lo2/g;

    .line 34
    .line 35
    iput-object p1, v1, Lo2/g;->d:Lo2/g;

    .line 36
    .line 37
    iget-object p1, p1, Lo2/g;->c:Lo2/g;

    .line 38
    .line 39
    iput-object p1, v1, Lo2/g;->c:Lo2/g;

    .line 40
    .line 41
    iput-object v1, p1, Lo2/g;->d:Lo2/g;

    .line 42
    .line 43
    iget-object p1, v1, Lo2/g;->d:Lo2/g;

    .line 44
    .line 45
    iput-object v1, p1, Lo2/g;->c:Lo2/g;

    .line 46
    .line 47
    invoke-virtual {v1}, Lo2/g;->removeLast()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    return-object p1
.end method

.method public put(Lo2/q;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo2/q;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lo2/h;->b:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lo2/g;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    new-instance v1, Lo2/g;

    .line 12
    .line 13
    invoke-direct {v1, p1}, Lo2/g;-><init>(Lo2/q;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, v1, Lo2/g;->d:Lo2/g;

    .line 17
    .line 18
    iget-object v2, p0, Lo2/h;->a:Lo2/g;

    .line 19
    .line 20
    iget-object v3, v2, Lo2/g;->d:Lo2/g;

    .line 21
    .line 22
    iput-object v3, v1, Lo2/g;->d:Lo2/g;

    .line 23
    .line 24
    iput-object v2, v1, Lo2/g;->c:Lo2/g;

    .line 25
    .line 26
    iput-object v1, v2, Lo2/g;->d:Lo2/g;

    .line 27
    .line 28
    iget-object v2, v1, Lo2/g;->d:Lo2/g;

    .line 29
    .line 30
    iput-object v1, v2, Lo2/g;->c:Lo2/g;

    .line 31
    .line 32
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-interface {p1}, Lo2/q;->offer()V

    .line 37
    .line 38
    .line 39
    :goto_0
    invoke-virtual {v1, p2}, Lo2/g;->add(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public removeLast()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lo2/h;->a:Lo2/g;

    .line 2
    .line 3
    iget-object v1, v0, Lo2/g;->d:Lo2/g;

    .line 4
    .line 5
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_1

    .line 10
    .line 11
    invoke-virtual {v1}, Lo2/g;->removeLast()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    return-object v2

    .line 18
    :cond_0
    iget-object v2, v1, Lo2/g;->d:Lo2/g;

    .line 19
    .line 20
    iget-object v3, v1, Lo2/g;->c:Lo2/g;

    .line 21
    .line 22
    iput-object v3, v2, Lo2/g;->c:Lo2/g;

    .line 23
    .line 24
    iget-object v3, v1, Lo2/g;->c:Lo2/g;

    .line 25
    .line 26
    iput-object v2, v3, Lo2/g;->d:Lo2/g;

    .line 27
    .line 28
    iget-object v2, p0, Lo2/h;->b:Ljava/util/HashMap;

    .line 29
    .line 30
    iget-object v3, v1, Lo2/g;->a:Lo2/q;

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    invoke-interface {v3}, Lo2/q;->offer()V

    .line 36
    .line 37
    .line 38
    iget-object v1, v1, Lo2/g;->d:Lo2/g;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 v0, 0x0

    .line 42
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "GroupedLinkedMap( "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lo2/h;->a:Lo2/g;

    .line 9
    .line 10
    iget-object v2, v1, Lo2/g;->c:Lo2/g;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-nez v4, :cond_0

    .line 18
    .line 19
    const/16 v3, 0x7b

    .line 20
    .line 21
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v3, v2, Lo2/g;->a:Lo2/q;

    .line 25
    .line 26
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const/16 v3, 0x3a

    .line 30
    .line 31
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Lo2/g;->size()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v3, "}, "

    .line 42
    .line 43
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-object v2, v2, Lo2/g;->c:Lo2/g;

    .line 47
    .line 48
    const/4 v3, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    if-eqz v3, :cond_1

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    add-int/lit8 v1, v1, -0x2

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    :cond_1
    const-string v1, " )"

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    return-object v0
.end method
