.class public final LM/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LM/k;


# direct methods
.method public constructor <init>(LM/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LM/m;->a:LM/k;

    .line 5
    .line 6
    return-void
.end method

.method public static toContentInfoCompat(Landroid/view/ContentInfo;)LM/m;
    .locals 2

    .line 1
    new-instance v0, LM/m;

    .line 2
    .line 3
    new-instance v1, LM/j;

    .line 4
    .line 5
    invoke-direct {v1, p0}, LM/j;-><init>(Landroid/view/ContentInfo;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, LM/m;-><init>(LM/k;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method


# virtual methods
.method public getClip()Landroid/content/ClipData;
    .locals 1

    .line 1
    iget-object v0, p0, LM/m;->a:LM/k;

    .line 2
    .line 3
    invoke-interface {v0}, LM/k;->getClip()Landroid/content/ClipData;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getFlags()I
    .locals 1

    .line 1
    iget-object v0, p0, LM/m;->a:LM/k;

    .line 2
    .line 3
    invoke-interface {v0}, LM/k;->getFlags()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getSource()I
    .locals 1

    .line 1
    iget-object v0, p0, LM/m;->a:LM/k;

    .line 2
    .line 3
    invoke-interface {v0}, LM/k;->getSource()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public toContentInfo()Landroid/view/ContentInfo;
    .locals 1

    .line 1
    iget-object v0, p0, LM/m;->a:LM/k;

    .line 2
    .line 3
    invoke-interface {v0}, LM/k;->getWrapped()Landroid/view/ContentInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, LC3/j;->j(Ljava/lang/Object;)Landroid/view/ContentInfo;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LM/m;->a:LM/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
