.class public final Lg5/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lflix/com/vision/ui/auth/LoginActivity;


# direct methods
.method public constructor <init>(Lflix/com/vision/ui/auth/LoginActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lg5/c;->b:Lflix/com/vision/ui/auth/LoginActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lg5/c;->b:Lflix/com/vision/ui/auth/LoginActivity;

    .line 2
    .line 3
    iget-object v0, p1, Lflix/com/vision/ui/auth/LoginActivity;->m:Landroid/widget/Button;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p1, Lflix/com/vision/ui/auth/LoginActivity;->r:LO4/e;

    .line 10
    .line 11
    new-instance v1, Lg5/d;

    .line 12
    .line 13
    invoke-direct {v1, p1}, Lg5/d;-><init>(Lflix/com/vision/ui/auth/LoginActivity;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, LO4/e;->logout(LO4/d;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
