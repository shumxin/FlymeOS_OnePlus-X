.class abstract Lcom/android/internal/policy/impl/UcGlobalActions$SinglePressAction;
.super Ljava/lang/Object;
.source "UcGlobalActions.java"

# interfaces
.implements Lcom/android/internal/policy/impl/UcGlobalActions$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/UcGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SinglePressAction"
.end annotation


# instance fields
.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mIconResId:I

.field private final mMessage:Ljava/lang/CharSequence;

.field private final mMessageResId:I


# direct methods
.method protected constructor <init>(II)V
    .locals 1
    .param p1, "iconResId"    # I
    .param p2, "messageResId"    # I

    .prologue
    const/4 v0, 0x0

    .line 848
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 849
    iput p1, p0, Lcom/android/internal/policy/impl/UcGlobalActions$SinglePressAction;->mIconResId:I

    .line 850
    iput p2, p0, Lcom/android/internal/policy/impl/UcGlobalActions$SinglePressAction;->mMessageResId:I

    .line 851
    iput-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 852
    iput-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 853
    return-void
.end method

.method protected constructor <init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "iconResId"    # I
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 855
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 856
    iput p1, p0, Lcom/android/internal/policy/impl/UcGlobalActions$SinglePressAction;->mIconResId:I

    .line 857
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$SinglePressAction;->mMessageResId:I

    .line 858
    iput-object p3, p0, Lcom/android/internal/policy/impl/UcGlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 859
    iput-object p2, p0, Lcom/android/internal/policy/impl/UcGlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 860
    return-void
.end method

.method protected constructor <init>(ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "iconResId"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 862
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 863
    iput p1, p0, Lcom/android/internal/policy/impl/UcGlobalActions$SinglePressAction;->mIconResId:I

    .line 864
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$SinglePressAction;->mMessageResId:I

    .line 865
    iput-object p2, p0, Lcom/android/internal/policy/impl/UcGlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 866
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 867
    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 889
    const v5, 0x1090054

    const/4 v6, 0x0

    invoke-virtual {p4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 891
    .local v4, "v":Landroid/view/View;
    const v5, 0x1020006

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 892
    .local v0, "icon":Landroid/widget/ImageView;
    const v5, 0x102000b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 894
    .local v1, "messageView":Landroid/widget/TextView;
    const v5, 0x10202f6

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 895
    .local v3, "statusView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UcGlobalActions$SinglePressAction;->getStatus()Ljava/lang/String;

    move-result-object v2

    .line 896
    .local v2, "status":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 897
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 901
    :goto_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/UcGlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_2

    .line 902
    iget-object v5, p0, Lcom/android/internal/policy/impl/UcGlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 903
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 907
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/UcGlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    if-eqz v5, :cond_3

    .line 908
    iget-object v5, p0, Lcom/android/internal/policy/impl/UcGlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 913
    :goto_2
    return-object v4

    .line 899
    :cond_1
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 904
    :cond_2
    iget v5, p0, Lcom/android/internal/policy/impl/UcGlobalActions$SinglePressAction;->mIconResId:I

    if-eqz v5, :cond_0

    .line 905
    iget v5, p0, Lcom/android/internal/policy/impl/UcGlobalActions$SinglePressAction;->mIconResId:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 910
    :cond_3
    iget v5, p0, Lcom/android/internal/policy/impl/UcGlobalActions$SinglePressAction;->mMessageResId:I

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2
.end method

.method public getLabelForAccessibility(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 880
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 881
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 883
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$SinglePressAction;->mMessageResId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 874
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 870
    const/4 v0, 0x1

    return v0
.end method

.method public abstract onPress()V
.end method