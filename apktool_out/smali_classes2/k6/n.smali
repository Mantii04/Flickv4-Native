.class public abstract Lk6/n;
.super Lk6/o;
.source "SourceFile"


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public final e:Ljava/lang/StringBuilder;

.field public f:Ljava/lang/String;

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Lj6/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lk6/n;->e:Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lk6/n;->g:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lk6/n;->h:Z

    .line 15
    .line 16
    iput-boolean v0, p0, Lk6/n;->i:Z

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public bridge synthetic f()Lk6/o;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk6/n;->p()Lk6/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final h(C)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lk6/n;->d:Ljava/lang/String;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :goto_0
    iput-object p1, p0, Lk6/n;->d:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method public final i(C)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lk6/n;->h:Z

    .line 3
    .line 4
    iget-object v0, p0, Lk6/n;->f:Ljava/lang/String;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lk6/n;->e:Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lk6/n;->f:Ljava/lang/String;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lk6/n;->e:Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lk6/n;->h:Z

    .line 3
    .line 4
    iget-object v0, p0, Lk6/n;->f:Ljava/lang/String;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lk6/n;->e:Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lk6/n;->f:Ljava/lang/String;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lk6/n;->e:Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    iput-object p1, p0, Lk6/n;->f:Ljava/lang/String;

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final k([I)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lk6/n;->h:Z

    .line 3
    .line 4
    iget-object v0, p0, Lk6/n;->f:Ljava/lang/String;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lk6/n;->e:Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lk6/n;->f:Ljava/lang/String;

    .line 15
    .line 16
    :cond_0
    array-length v0, p1

    .line 17
    const/4 v1, 0x0

    .line 18
    :goto_0
    if-ge v1, v0, :cond_1

    .line 19
    .line 20
    aget v2, p1, v1

    .line 21
    .line 22
    iget-object v3, p0, Lk6/n;->e:Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return-void
.end method

.method public final l(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk6/n;->b:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :goto_0
    iput-object p1, p0, Lk6/n;->b:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {p1}, Li6/b;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lk6/n;->c:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lk6/n;->b:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    :goto_1
    invoke-static {v0}, Lh6/k;->isFalse(Z)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lk6/n;->b:Ljava/lang/String;

    .line 19
    .line 20
    return-object v0
.end method

.method public final n(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk6/n;->b:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p1}, Li6/b;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lk6/n;->c:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public final o()V
    .locals 5

    .line 1
    iget-object v0, p0, Lk6/n;->j:Lj6/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lj6/c;

    .line 6
    .line 7
    invoke-direct {v0}, Lj6/c;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lk6/n;->j:Lj6/c;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lk6/n;->d:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v1, p0, Lk6/n;->e:Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v0, :cond_4

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lk6/n;->d:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-lez v0, :cond_4

    .line 30
    .line 31
    iget-boolean v0, p0, Lk6/n;->h:Z

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-lez v0, :cond_1

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget-object v0, p0, Lk6/n;->f:Ljava/lang/String;

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    iget-boolean v0, p0, Lk6/n;->g:Z

    .line 50
    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    const-string v0, ""

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    move-object v0, v2

    .line 57
    :goto_0
    iget-object v3, p0, Lk6/n;->j:Lj6/c;

    .line 58
    .line 59
    iget-object v4, p0, Lk6/n;->d:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v3, v4, v0}, Lj6/c;->put(Ljava/lang/String;Ljava/lang/String;)Lj6/c;

    .line 62
    .line 63
    .line 64
    :cond_4
    iput-object v2, p0, Lk6/n;->d:Ljava/lang/String;

    .line 65
    .line 66
    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lk6/n;->g:Z

    .line 68
    .line 69
    iput-boolean v0, p0, Lk6/n;->h:Z

    .line 70
    .line 71
    invoke-static {v1}, Lk6/o;->g(Ljava/lang/StringBuilder;)V

    .line 72
    .line 73
    .line 74
    iput-object v2, p0, Lk6/n;->f:Ljava/lang/String;

    .line 75
    .line 76
    return-void
.end method

.method public p()Lk6/n;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lk6/n;->b:Ljava/lang/String;

    .line 3
    .line 4
    iput-object v0, p0, Lk6/n;->c:Ljava/lang/String;

    .line 5
    .line 6
    iput-object v0, p0, Lk6/n;->d:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v1, p0, Lk6/n;->e:Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-static {v1}, Lk6/o;->g(Ljava/lang/StringBuilder;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lk6/n;->f:Ljava/lang/String;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput-boolean v1, p0, Lk6/n;->g:Z

    .line 17
    .line 18
    iput-boolean v1, p0, Lk6/n;->h:Z

    .line 19
    .line 20
    iput-boolean v1, p0, Lk6/n;->i:Z

    .line 21
    .line 22
    iput-object v0, p0, Lk6/n;->j:Lj6/c;

    .line 23
    .line 24
    return-object p0
.end method
