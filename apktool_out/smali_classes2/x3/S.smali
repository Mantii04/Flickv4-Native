.class public final Lx3/S;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lx3/S;->a:I

    .line 3
    iput p3, p0, Lx3/S;->b:I

    .line 4
    iput p4, p0, Lx3/S;->c:I

    return-void
.end method

.method public constructor <init>(Lx3/S;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iget v0, p1, Lx3/S;->a:I

    iput v0, p0, Lx3/S;->a:I

    .line 7
    iget v0, p1, Lx3/S;->b:I

    iput v0, p0, Lx3/S;->b:I

    .line 8
    iget p1, p1, Lx3/S;->c:I

    iput p1, p0, Lx3/S;->c:I

    return-void
.end method
