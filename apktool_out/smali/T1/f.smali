.class public final LT1/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LT1/I;


# instance fields
.field public final synthetic a:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LT1/f;->a:Lcom/airbnb/lottie/LottieAnimationView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 6
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, LT1/f;->onResult(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResult(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, LT1/f;->a:Lcom/airbnb/lottie/LottieAnimationView;

    iget v1, v0, Lcom/airbnb/lottie/LottieAnimationView;->p:I

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    .line 3
    :cond_0
    iget-object v0, v0, Lcom/airbnb/lottie/LottieAnimationView;->n:LT1/I;

    if-nez v0, :cond_1

    .line 4
    sget-object v0, Lcom/airbnb/lottie/LottieAnimationView;->E:LT1/d;

    .line 5
    :cond_1
    invoke-interface {v0, p1}, LT1/I;->onResult(Ljava/lang/Object;)V

    return-void
.end method
