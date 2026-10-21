.class public abstract LM/J0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/view/WindowInsets;

.field public final b:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, LM/J0;->b:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getDispatchMode()I
    .locals 1

    .line 1
    iget v0, p0, LM/J0;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public abstract onEnd(LM/S0;)V
.end method

.method public abstract onPrepare(LM/S0;)V
.end method

.method public abstract onProgress(LM/h1;Ljava/util/List;)LM/h1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LM/h1;",
            "Ljava/util/List<",
            "LM/S0;",
            ">;)",
            "LM/h1;"
        }
    .end annotation
.end method

.method public abstract onStart(LM/S0;LM/I0;)LM/I0;
.end method
