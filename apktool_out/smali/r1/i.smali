.class public final Lr1/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Ljava/lang/String;

.field public c:Lr1/h;

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lr1/i;->a:Landroid/content/Context;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public allowDataLossOnRecovery(Z)Lr1/i;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lr1/i;->e:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public build()Lr1/k;
    .locals 6

    .line 1
    iget-object v3, p0, Lr1/i;->c:Lr1/h;

    .line 2
    .line 3
    if-eqz v3, :cond_2

    .line 4
    .line 5
    iget-boolean v0, p0, Lr1/i;->d:Z

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lr1/i;->b:Ljava/lang/String;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    const-string v1, "Must set a non-null database name to a configuration that uses the no backup directory."

    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0

    .line 28
    :cond_1
    :goto_0
    new-instance v0, Lr1/k;

    .line 29
    .line 30
    iget-object v2, p0, Lr1/i;->b:Ljava/lang/String;

    .line 31
    .line 32
    iget-boolean v4, p0, Lr1/i;->d:Z

    .line 33
    .line 34
    iget-boolean v5, p0, Lr1/i;->e:Z

    .line 35
    .line 36
    iget-object v1, p0, Lr1/i;->a:Landroid/content/Context;

    .line 37
    .line 38
    invoke-direct/range {v0 .. v5}, Lr1/k;-><init>(Landroid/content/Context;Ljava/lang/String;Lr1/h;ZZ)V

    .line 39
    .line 40
    .line 41
    return-object v0

    .line 42
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 43
    .line 44
    const-string v1, "Must set a callback to create the configuration."

    .line 45
    .line 46
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw v0
.end method

.method public callback(Lr1/h;)Lr1/i;
    .locals 1

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lr1/i;->c:Lr1/h;

    .line 7
    .line 8
    return-object p0
.end method

.method public name(Ljava/lang/String;)Lr1/i;
    .locals 0

    .line 1
    iput-object p1, p0, Lr1/i;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public noBackupDirectory(Z)Lr1/i;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lr1/i;->d:Z

    .line 2
    .line 3
    return-object p0
.end method
