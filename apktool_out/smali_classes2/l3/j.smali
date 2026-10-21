.class public final Ll3/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:LH3/i;


# direct methods
.method public constructor <init>(LH3/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll3/j;->b:LH3/i;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Ll3/j;->b:LH3/i;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, LH3/i;->c:Z

    .line 5
    .line 6
    iget-object v1, v0, LH3/i;->e:Ly/c;

    .line 7
    .line 8
    check-cast v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->V:LW/l;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-virtual {v1, v2}, LW/l;->continueSettling(Z)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iget v1, v0, LH3/i;->b:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, LH3/i;->a(I)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget-object v1, v0, LH3/i;->e:Ly/c;

    .line 28
    .line 29
    check-cast v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 30
    .line 31
    iget v2, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->U:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    if-ne v2, v3, :cond_1

    .line 35
    .line 36
    iget v0, v0, LH3/i;->b:I

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i(I)V

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void
.end method
