.class public final La3/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU2/b;


# instance fields
.field public final a:Lt5/a;

.field public final b:Lt5/a;

.field public final c:Lt5/a;


# direct methods
.method public constructor <init>(Lt5/a;Lt5/a;Lt5/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt5/a;",
            "Lt5/a;",
            "Lt5/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, La3/w;->a:Lt5/a;

    .line 5
    .line 6
    iput-object p2, p0, La3/w;->b:Lt5/a;

    .line 7
    .line 8
    iput-object p3, p0, La3/w;->c:Lt5/a;

    .line 9
    .line 10
    return-void
.end method

.method public static create(Lt5/a;Lt5/a;Lt5/a;)La3/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt5/a;",
            "Lt5/a;",
            "Lt5/a;",
            ")",
            "La3/w;"
        }
    .end annotation

    .line 1
    new-instance v0, La3/w;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, La3/w;-><init>(Lt5/a;Lt5/a;Lt5/a;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Ljava/lang/String;I)La3/v;
    .locals 1

    .line 1
    new-instance v0, La3/v;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, La3/v;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public get()La3/v;
    .locals 3

    .line 2
    iget-object v0, p0, La3/w;->a:Lt5/a;

    invoke-interface {v0}, Lt5/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, La3/w;->b:Lt5/a;

    invoke-interface {v1}, Lt5/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, La3/w;->c:Lt5/a;

    invoke-interface {v2}, Lt5/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, La3/w;->newInstance(Landroid/content/Context;Ljava/lang/String;I)La3/v;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, La3/w;->get()La3/v;

    move-result-object v0

    return-object v0
.end method
