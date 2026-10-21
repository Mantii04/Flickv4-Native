.class public final La3/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU2/b;


# instance fields
.field public final a:Lt5/a;


# direct methods
.method public constructor <init>(Lt5/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt5/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, La3/h;->a:Lt5/a;

    .line 5
    .line 6
    return-void
.end method

.method public static create(Lt5/a;)La3/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt5/a;",
            ")",
            "La3/h;"
        }
    .end annotation

    .line 1
    new-instance v0, La3/h;

    .line 2
    .line 3
    invoke-direct {v0, p0}, La3/h;-><init>(Lt5/a;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static packageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 6
    .line 7
    invoke-static {p0, v0}, LU2/d;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Ljava/lang/String;

    .line 12
    .line 13
    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, La3/h;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, La3/h;->a:Lt5/a;

    invoke-interface {v0}, Lt5/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, La3/h;->packageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
