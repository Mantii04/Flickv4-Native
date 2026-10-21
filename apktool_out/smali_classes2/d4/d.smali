.class public final Ld4/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le4/e;


# instance fields
.field public final synthetic a:Le4/e;


# direct methods
.method public constructor <init>(Le4/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ld4/d;->a:Le4/e;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public canDismiss(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ld4/d;->a:Le4/e;

    .line 2
    .line 3
    check-cast v0, Ld4/d;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ld4/d;->canDismiss(I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public onDismiss(Landroidx/recyclerview/widget/RecyclerView;[I)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld4/d;->a:Le4/e;

    .line 2
    .line 3
    check-cast v0, Ld4/d;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Ld4/d;->onDismiss(Landroidx/recyclerview/widget/RecyclerView;[I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
