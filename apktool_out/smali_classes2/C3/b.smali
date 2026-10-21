.class public final LC3/b;
.super LC3/i;
.source "SourceFile"


# instance fields
.field public final a:Landroid/graphics/Typeface;

.field public final b:LC3/a;

.field public c:Z


# direct methods
.method public constructor <init>(LC3/a;Landroid/graphics/Typeface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, LC3/i;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, LC3/b;->a:Landroid/graphics/Typeface;

    .line 5
    .line 6
    iput-object p1, p0, LC3/b;->b:LC3/a;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LC3/b;->c:Z

    .line 3
    .line 4
    return-void
.end method

.method public onFontRetrievalFailed(I)V
    .locals 1

    .line 1
    iget-boolean p1, p0, LC3/b;->c:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, LC3/b;->b:LC3/a;

    .line 6
    .line 7
    iget-object v0, p0, LC3/b;->a:Landroid/graphics/Typeface;

    .line 8
    .line 9
    invoke-interface {p1, v0}, LC3/a;->apply(Landroid/graphics/Typeface;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public onFontRetrieved(Landroid/graphics/Typeface;Z)V
    .locals 0

    .line 1
    iget-boolean p2, p0, LC3/b;->c:Z

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    iget-object p2, p0, LC3/b;->b:LC3/a;

    .line 6
    .line 7
    invoke-interface {p2, p1}, LC3/a;->apply(Landroid/graphics/Typeface;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
