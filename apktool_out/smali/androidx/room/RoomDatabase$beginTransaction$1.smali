.class final Landroidx/room/RoomDatabase$beginTransaction$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements LH5/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/RoomDatabase;->beginTransaction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "LH5/l;"
    }
.end annotation


# instance fields
.field public final synthetic b:Landroidx/room/RoomDatabase;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 0

    iput-object p1, p0, Landroidx/room/RoomDatabase$beginTransaction$1;->b:Landroidx/room/RoomDatabase;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lr1/f;

    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase$beginTransaction$1;->invoke(Lr1/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lr1/f;)Ljava/lang/Object;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Landroidx/room/RoomDatabase$beginTransaction$1;->b:Landroidx/room/RoomDatabase;

    invoke-static {p1}, Landroidx/room/RoomDatabase;->access$internalBeginTransaction(Landroidx/room/RoomDatabase;)V

    const/4 p1, 0x0

    return-object p1
.end method
