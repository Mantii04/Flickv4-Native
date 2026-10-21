.class public final LM/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM/h;


# instance fields
.field public a:Landroid/content/ClipData;

.field public b:I

.field public c:I

.field public d:Landroid/net/Uri;

.field public e:Landroid/os/Bundle;


# virtual methods
.method public build()LM/m;
    .locals 2

    .line 1
    new-instance v0, LM/m;

    .line 2
    .line 3
    new-instance v1, LM/l;

    .line 4
    .line 5
    invoke-direct {v1, p0}, LM/l;-><init>(LM/i;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, LM/m;-><init>(LM/k;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, LM/i;->e:Landroid/os/Bundle;

    .line 2
    .line 3
    return-void
.end method

.method public setFlags(I)V
    .locals 0

    .line 1
    iput p1, p0, LM/i;->c:I

    .line 2
    .line 3
    return-void
.end method

.method public setLinkUri(Landroid/net/Uri;)V
    .locals 0

    .line 1
    iput-object p1, p0, LM/i;->d:Landroid/net/Uri;

    .line 2
    .line 3
    return-void
.end method
