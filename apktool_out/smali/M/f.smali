.class public final LM/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LM/h;


# direct methods
.method public constructor <init>(Landroid/content/ClipData;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v1, 0x1f

    .line 7
    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    new-instance v0, LM/g;

    .line 11
    .line 12
    invoke-direct {v0, p1, p2}, LM/g;-><init>(Landroid/content/ClipData;I)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, LM/f;->a:LM/h;

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance v0, LM/i;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, v0, LM/i;->a:Landroid/content/ClipData;

    .line 24
    .line 25
    iput p2, v0, LM/i;->b:I

    .line 26
    .line 27
    iput-object v0, p0, LM/f;->a:LM/h;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public build()LM/m;
    .locals 1

    .line 1
    iget-object v0, p0, LM/f;->a:LM/h;

    .line 2
    .line 3
    invoke-interface {v0}, LM/h;->build()LM/m;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public setExtras(Landroid/os/Bundle;)LM/f;
    .locals 1

    .line 1
    iget-object v0, p0, LM/f;->a:LM/h;

    .line 2
    .line 3
    invoke-interface {v0, p1}, LM/h;->setExtras(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setFlags(I)LM/f;
    .locals 1

    .line 1
    iget-object v0, p0, LM/f;->a:LM/h;

    .line 2
    .line 3
    invoke-interface {v0, p1}, LM/h;->setFlags(I)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setLinkUri(Landroid/net/Uri;)LM/f;
    .locals 1

    .line 1
    iget-object v0, p0, LM/f;->a:LM/h;

    .line 2
    .line 3
    invoke-interface {v0, p1}, LM/h;->setLinkUri(Landroid/net/Uri;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
