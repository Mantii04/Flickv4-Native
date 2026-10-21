.class public final Landroidx/activity/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Ld/a;

.field public final synthetic f:Landroidx/activity/j;


# direct methods
.method public constructor <init>(Landroidx/activity/j;ILd/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/activity/h;->f:Landroidx/activity/j;

    .line 5
    .line 6
    iput p2, p0, Landroidx/activity/h;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/activity/h;->e:Ld/a;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/activity/h;->e:Ld/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ld/a;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/activity/h;->f:Landroidx/activity/j;

    .line 8
    .line 9
    iget v2, p0, Landroidx/activity/h;->b:I

    .line 10
    .line 11
    invoke-virtual {v1, v2, v0}, Landroidx/activity/result/ActivityResultRegistry;->dispatchResult(ILjava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method
