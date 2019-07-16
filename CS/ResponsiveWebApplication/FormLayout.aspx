<%@ Page Title="FormLayout" Language="C#" MasterPageFile="~/Root.master" AutoEventWireup="true" CodeBehind="FormLayout.aspx.cs" Inherits="ResponsiveWebApplication.FormLayout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <link rel="stylesheet" type="text/css" href='<%# ResolveUrl("~/Content/FormLayout.css") %>' />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="LeftPanelContent" runat="server">
    <h3 class="leftpanel-section section-caption">Categories</h3>
    <dx:ASPxNavBar runat="server" ID="CategoriesNavBar" ClientInstanceName="categoriesNavBar"
        AllowSelectItem="true" ShowGroupHeaders="false"
        Width="100%" CssClass="filters-navbar" SyncSelectionMode="CurrentPathAndQuery">
        <ItemStyle CssClass="item" />
        <Groups>
            <dx:NavBarGroup>
                <Items>
                    <dx:NavBarItem Text="Category 1" Selected="true" Name="Category1" NavigateUrl="FormLayout.aspx" />
                    <dx:NavBarItem Text="Category 2" Name="Category2" NavigateUrl="FormLayout.aspx?2" />
                    <dx:NavBarItem Text="Category 3" Name="Category3" NavigateUrl="FormLayout.aspx?3" />
                </Items>
            </dx:NavBarGroup>
        </Groups>
    </dx:ASPxNavBar>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="RightPanelContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="PageToolbar" runat="server">
    <dx:ASPxMenu runat="server" ID="PageToolbar" ClientInstanceName="pageToolbar"
        ItemAutoWidth="false" ApplyItemStyleToTemplates="true" ItemWrap="false"
        AllowSelectItem="false" SeparatorWidth="0"
        Width="100%" CssClass="page-toolbar">
        <SettingsAdaptivity Enabled="true" EnableAutoHideRootItems="true"
            EnableCollapseRootItemsToIcons="true" CollapseRootItemsToIconsAtWindowInnerWidth="600" />
        <ItemStyle CssClass="item" VerticalAlign="Middle" />
        <ItemImage Width="16px" Height="16px" />
        <Items>
            <dx:MenuItem Enabled="false">
                <Template>
                    <h1>Form Layout</h1>
                </Template>
            </dx:MenuItem>
        </Items>
    </dx:ASPxMenu>
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="PageContent" runat="server">
    <dx:ASPxPageControl ID="pageControl" Width="100%" runat="server" ActiveTabIndex="0" EnableHierarchyRecreation="True"
        EnableTabScrolling="true">
        <TabPages>
            <dx:TabPage Text="Page 1">
                <ContentCollection>
                    <dx:ContentControl ID="ContentControl1" runat="server">
                        <div class="formLayoutContainer">
                            <dx:ASPxFormLayout runat="server" ID="ASPxFormLayout" Width="100%" ClientInstanceName="FormLayout"
                                UseDefaultPaddings="false" CssClass="formLayout">
                                <Items>
                                    <dx:LayoutGroup Width="100%" Caption="Some Form" ColumnCount="3">
                                        <GridSettings StretchLastItem="true" WrapCaptionAtWidth="660">
                                            <Breakpoints>
                                                <dx:LayoutBreakpoint MaxWidth="500" ColumnCount="1" Name="S" />
                                                <dx:LayoutBreakpoint MaxWidth="800" ColumnCount="2" Name="M" />
                                            </Breakpoints>
                                        </GridSettings>
                                        <Items>
                                            <dx:LayoutItem Caption="First name" VerticalAlign="Middle">
                                                <SpanRules>
                                                    <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="S"></dx:SpanRule>
                                                    <dx:SpanRule ColumnSpan="2" RowSpan="1" BreakpointName="M"></dx:SpanRule>
                                                </SpanRules>
                                                <LayoutItemNestedControlCollection>
                                                    <dx:LayoutItemNestedControlContainer>
                                                        <dx:ASPxTextBox ID="FirstNameTextBox" runat="server" Width="100%" />
                                                    </dx:LayoutItemNestedControlContainer>
                                                </LayoutItemNestedControlCollection>
                                            </dx:LayoutItem>
                                            <dx:LayoutItem Caption="Last name" VerticalAlign="Middle">
                                                <SpanRules>
                                                    <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="S"></dx:SpanRule>
                                                    <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="M"></dx:SpanRule>
                                                </SpanRules>
                                                <LayoutItemNestedControlCollection>
                                                    <dx:LayoutItemNestedControlContainer>
                                                        <dx:ASPxTextBox ID="LastNameTextBox" runat="server" Width="100%" />
                                                    </dx:LayoutItemNestedControlContainer>
                                                </LayoutItemNestedControlCollection>
                                            </dx:LayoutItem>
                                            <dx:LayoutItem Caption="Birthday" VerticalAlign="Middle">
                                                <SpanRules>
                                                    <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="S"></dx:SpanRule>
                                                    <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="M"></dx:SpanRule>
                                                </SpanRules>
                                                <LayoutItemNestedControlCollection>
                                                    <dx:LayoutItemNestedControlContainer>
                                                        <dx:ASPxDateEdit runat="server" ID="BirthdayDateEdit" Width="100%">
                                                        </dx:ASPxDateEdit>
                                                    </dx:LayoutItemNestedControlContainer>
                                                </LayoutItemNestedControlCollection>
                                            </dx:LayoutItem>
                                            <dx:LayoutItem Caption="Email" VerticalAlign="Middle">
                                                <SpanRules>
                                                    <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="S"></dx:SpanRule>
                                                    <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="M"></dx:SpanRule>
                                                </SpanRules>
                                                <LayoutItemNestedControlCollection>
                                                    <dx:LayoutItemNestedControlContainer>
                                                        <dx:ASPxTextBox ID="EmailTextBox" runat="server" Width="100%" />
                                                    </dx:LayoutItemNestedControlContainer>
                                                </LayoutItemNestedControlCollection>
                                            </dx:LayoutItem>
                                            <dx:LayoutItem Caption="Phone 1" VerticalAlign="Middle">
                                                <SpanRules>
                                                    <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="S"></dx:SpanRule>
                                                    <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="M"></dx:SpanRule>
                                                </SpanRules>
                                                <LayoutItemNestedControlCollection>
                                                    <dx:LayoutItemNestedControlContainer>
                                                        <dx:ASPxTextBox ID="Phone1TextBox" runat="server" Width="100%" />
                                                    </dx:LayoutItemNestedControlContainer>
                                                </LayoutItemNestedControlCollection>
                                            </dx:LayoutItem>
                                            <dx:LayoutItem Caption="Phone 2" VerticalAlign="Middle">
                                                <SpanRules>
                                                    <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="S"></dx:SpanRule>
                                                    <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="M"></dx:SpanRule>
                                                </SpanRules>
                                                <LayoutItemNestedControlCollection>
                                                    <dx:LayoutItemNestedControlContainer>
                                                        <dx:ASPxTextBox ID="Phone2TextBox" runat="server" Width="100%" />
                                                    </dx:LayoutItemNestedControlContainer>
                                                </LayoutItemNestedControlCollection>
                                            </dx:LayoutItem>
                                            <dx:LayoutItem Caption="Country" VerticalAlign="Middle" ColumnSpan="2">
                                                <SpanRules>
                                                    <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="S"></dx:SpanRule>
                                                    <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="M"></dx:SpanRule>
                                                </SpanRules>
                                                <LayoutItemNestedControlCollection>
                                                    <dx:LayoutItemNestedControlContainer>
                                                        <dx:ASPxComboBox ID="CountryComboBox" runat="server" Width="100%" TextField="Name" />
                                                    </dx:LayoutItemNestedControlContainer>
                                                </LayoutItemNestedControlCollection>
                                            </dx:LayoutItem>
                                            <dx:LayoutItem Caption="Address" RowSpan="2">
                                                <SpanRules>
                                                    <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="S"></dx:SpanRule>
                                                    <dx:SpanRule ColumnSpan="1" RowSpan="2" BreakpointName="M"></dx:SpanRule>
                                                </SpanRules>
                                                <LayoutItemNestedControlCollection>
                                                    <dx:LayoutItemNestedControlContainer>
                                                        <dx:ASPxMemo ID="AddressMemo" Width="100%" Height="100%" runat="server" />
                                                    </dx:LayoutItemNestedControlContainer>
                                                </LayoutItemNestedControlCollection>
                                            </dx:LayoutItem>
                                            <dx:LayoutItem Caption="City" VerticalAlign="Middle" ColumnSpan="2">
                                                <SpanRules>
                                                    <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="S"></dx:SpanRule>
                                                    <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="M"></dx:SpanRule>
                                                </SpanRules>
                                                <LayoutItemNestedControlCollection>
                                                    <dx:LayoutItemNestedControlContainer>
                                                        <dx:ASPxTextBox ID="CityTextBox" runat="server" Width="100%" />
                                                    </dx:LayoutItemNestedControlContainer>
                                                </LayoutItemNestedControlCollection>
                                            </dx:LayoutItem>
                                            <dx:LayoutItem ShowCaption="False" HorizontalAlign="Right" VerticalAlign="Middle" Paddings-PaddingTop="20px" CssClass="lastItem">
                                                <SpanRules>
                                                    <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="S"></dx:SpanRule>
                                                    <dx:SpanRule ColumnSpan="1" RowSpan="1" BreakpointName="M"></dx:SpanRule>
                                                </SpanRules>
                                                <LayoutItemNestedControlCollection>
                                                    <dx:LayoutItemNestedControlContainer>
                                                        <dx:ASPxButton runat="server" ID="SignUpButton" Text="Submit" AutoPostBack="false" />
                                                    </dx:LayoutItemNestedControlContainer>
                                                </LayoutItemNestedControlCollection>
                                            </dx:LayoutItem>
                                        </Items>
                                    </dx:LayoutGroup>
                                </Items>
                            </dx:ASPxFormLayout>

                            <h2>Some Description</h2>
                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam ultrices. Quisque porta lorem cursus erat. Mauris at est ac risus tempus consequat. In euismod nisi porta augue. Quisque at est. Duis id libero. Nulla quis erat eu justo adipiscing placerat. Nam lorem.</p>
                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam ultrices. Quisque porta lorem cursus erat. Mauris at est ac risus tempus consequat. In euismod nisi porta augue. Quisque at est. Duis id libero. Nulla quis erat eu justo adipiscing placerat. Nam lorem.</p>
                        </div>

                    </dx:ContentControl>
                </ContentCollection>
            </dx:TabPage>
            <dx:TabPage Text="Page 2">
                <ContentCollection>
                    <dx:ContentControl ID="ContentControl2" runat="server">
                        <div class="formLayoutContainer">
                            <h2>Page Content 2</h2>
                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam ultrices. Quisque porta lorem cursus erat. Mauris at est ac risus tempus consequat. In euismod nisi porta augue. Quisque at est. Duis id libero. Nulla quis erat eu justo adipiscing placerat. Nam lorem.</p>
                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam ultrices. Quisque porta lorem cursus erat. Mauris at est ac risus tempus consequat. In euismod nisi porta augue. Quisque at est. Duis id libero. Nulla quis erat eu justo adipiscing placerat. Nam lorem.</p>
                        </div>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:TabPage>
            <dx:TabPage Text="Page 3">
                <ContentCollection>
                    <dx:ContentControl ID="ContentControl3" runat="server">
                        Page Content 3
                    </dx:ContentControl>
                </ContentCollection>
            </dx:TabPage>
            <dx:TabPage Text="Page 4">
                <ContentCollection>
                    <dx:ContentControl ID="ContentControl4" runat="server">
                        Page Content 4
                    </dx:ContentControl>
                </ContentCollection>
            </dx:TabPage>
            <dx:TabPage Text="Page 5">
                <ContentCollection>
                    <dx:ContentControl ID="ContentControl5" runat="server">
                        Page Content 5
                    </dx:ContentControl>
                </ContentCollection>
            </dx:TabPage>
        </TabPages>
    </dx:ASPxPageControl>
</asp:Content>
