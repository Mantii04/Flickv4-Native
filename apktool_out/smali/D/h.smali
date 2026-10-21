.class public final LD/h;
.super LJ/r;
.source "SourceFile"


# instance fields
.field public final a:LC/r;


# direct methods
.method public constructor <init>(LC/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, LJ/r;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LD/h;->a:LC/r;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onTypefaceRequestFailed(I)V
    .locals 1

    .line 1
    iget-object v0, p0, LD/h;->a:LC/r;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, LC/r;->onFontRetrievalFailed(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onTypefaceRetrieved(Landroid/graphics/Typeface;)V
    .locals 1

    .line 1
    iget-object v0, p0, LD/h;->a:LC/r;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, LC/r;->onFontRetrieved(Landroid/graphics/Typeface;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
