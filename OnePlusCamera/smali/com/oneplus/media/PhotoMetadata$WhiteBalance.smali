.class public final enum Lcom/oneplus/media/PhotoMetadata$WhiteBalance;
.super Ljava/lang/Enum;
.source "PhotoMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/media/PhotoMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WhiteBalance"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/media/PhotoMetadata$WhiteBalance;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/media/PhotoMetadata$WhiteBalance;

.field public static final enum AUTO:Lcom/oneplus/media/PhotoMetadata$WhiteBalance;

.field public static final enum MANUAL:Lcom/oneplus/media/PhotoMetadata$WhiteBalance;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Lcom/oneplus/media/PhotoMetadata$WhiteBalance;

    const-string v1, "AUTO"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/media/PhotoMetadata$WhiteBalance;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/media/PhotoMetadata$WhiteBalance;->AUTO:Lcom/oneplus/media/PhotoMetadata$WhiteBalance;

    .line 16
    new-instance v0, Lcom/oneplus/media/PhotoMetadata$WhiteBalance;

    const-string v1, "MANUAL"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/media/PhotoMetadata$WhiteBalance;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/media/PhotoMetadata$WhiteBalance;->MANUAL:Lcom/oneplus/media/PhotoMetadata$WhiteBalance;

    .line 13
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/oneplus/media/PhotoMetadata$WhiteBalance;

    sget-object v1, Lcom/oneplus/media/PhotoMetadata$WhiteBalance;->AUTO:Lcom/oneplus/media/PhotoMetadata$WhiteBalance;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/media/PhotoMetadata$WhiteBalance;->MANUAL:Lcom/oneplus/media/PhotoMetadata$WhiteBalance;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oneplus/media/PhotoMetadata$WhiteBalance;->$VALUES:[Lcom/oneplus/media/PhotoMetadata$WhiteBalance;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/media/PhotoMetadata$WhiteBalance;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 13
    const-class v0, Lcom/oneplus/media/PhotoMetadata$WhiteBalance;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/media/PhotoMetadata$WhiteBalance;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/media/PhotoMetadata$WhiteBalance;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/oneplus/media/PhotoMetadata$WhiteBalance;->$VALUES:[Lcom/oneplus/media/PhotoMetadata$WhiteBalance;

    invoke-virtual {v0}, [Lcom/oneplus/media/PhotoMetadata$WhiteBalance;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/media/PhotoMetadata$WhiteBalance;

    return-object v0
.end method
