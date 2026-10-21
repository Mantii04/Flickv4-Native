.class public final Lg/b;
.super Lg/o;
.source "SourceFile"


# instance fields
.field public I:Lp/n;

.field public J:Lp/r;


# direct methods
.method public constructor <init>(Lg/b;Lg/g;Landroid/content/res/Resources;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lg/k;-><init>(Lg/b;Lg/g;Landroid/content/res/Resources;)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object p2, p1, Lg/o;->H:[[I

    .line 7
    .line 8
    iput-object p2, p0, Lg/o;->H:[[I

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p2, p0, Lg/k;->g:[Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    array-length p2, p2

    .line 14
    new-array p2, p2, [[I

    .line 15
    .line 16
    iput-object p2, p0, Lg/o;->H:[[I

    .line 17
    .line 18
    :goto_0
    if-eqz p1, :cond_1

    .line 19
    .line 20
    iget-object p2, p1, Lg/b;->I:Lp/n;

    .line 21
    .line 22
    iput-object p2, p0, Lg/b;->I:Lp/n;

    .line 23
    .line 24
    iget-object p1, p1, Lg/b;->J:Lp/r;

    .line 25
    .line 26
    iput-object p1, p0, Lg/b;->J:Lp/r;

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    new-instance p1, Lp/n;

    .line 30
    .line 31
    invoke-direct {p1}, Lp/n;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lg/b;->I:Lp/n;

    .line 35
    .line 36
    new-instance p1, Lp/r;

    .line 37
    .line 38
    invoke-direct {p1}, Lp/r;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Lg/b;->J:Lp/r;

    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    new-instance v0, Lg/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lg/g;-><init>(Lg/b;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 2
    new-instance v0, Lg/g;

    invoke-direct {v0, p0, p1}, Lg/g;-><init>(Lg/b;Landroid/content/res/Resources;)V

    return-object v0
.end method
