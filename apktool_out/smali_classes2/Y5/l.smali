.class public final LY5/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LY5/k;


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, LY5/l;->a:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public afterTask()V
    .locals 0

    .line 1
    return-void
.end method

.method public getTaskMode()I
    .locals 1

    .line 1
    iget v0, p0, LY5/l;->a:I

    .line 2
    .line 3
    return v0
.end method
