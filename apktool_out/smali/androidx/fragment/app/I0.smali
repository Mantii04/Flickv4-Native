.class public final Landroidx/fragment/app/I0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/fragment/app/J0;

.field public final synthetic e:Landroidx/fragment/app/M0;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/M0;Landroidx/fragment/app/J0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/fragment/app/I0;->e:Landroidx/fragment/app/M0;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/fragment/app/I0;->b:Landroidx/fragment/app/J0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/I0;->e:Landroidx/fragment/app/M0;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/fragment/app/M0;->b:Ljava/util/ArrayList;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/fragment/app/I0;->b:Landroidx/fragment/app/J0;

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    iget-object v0, v0, Landroidx/fragment/app/M0;->c:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method
