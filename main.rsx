<App>
  <Include src="./functions.rsx" />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    paddingType="normal"
    sticky={null}
    type="main"
  >
    <Navigation
      id="navigation1"
      altText="OldShop"
      itemMode="static"
      src="https://retool-edge.com/83d4d9a1f1ecd17d111e6b4a014043cd.svg"
      style={{ ordered: [{ dropdownBackground: "rgba(241, 206, 206, 1)" }] }}
    >
      <Option id="1da8c" itemType="app" key="a8781" label="Home" />
      <Option id="c9dd3" itemType="app" label="Selling" />
      <Option id="2590e" itemType="app" label="Contact" />
      <Option
        id="9da94"
        disabled={false}
        hidden={false}
        iconPosition="left"
        itemType="app"
        label="Why OldShop"
      />
    </Navigation>
    <Text
      id="text2"
      disableMarkdown={true}
      heightType="fixed"
      style={{ ordered: [{ color: "rgba(93, 44, 44, 1)" }] }}
      value="Selling  your old stuff here with OldShop"
      verticalAlign="center"
    />
    <Text
      id="text1"
      style={{ ordered: [{ color: "rgba(194, 58, 58, 1)" }] }}
      value="Select Category"
      verticalAlign="center"
    />
    <Select
      id="select1"
      emptyMessage="No options"
      itemMode="static"
      label="Product"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
    >
      <Option id="a0a84" value="Kitchen" />
      <Option id="c4317" value="Home" />
      <Option id="33ced" value="Fashion" />
    </Select>
    <Modal id="modal1" buttonText="Select">
      <Form
        id="form1"
        requireValidation={true}
        resetAfterSubmit={true}
        showBody={true}
        showFooter={true}
        showHeader={true}
      >
        <Header>
          <Text id="formTitle1" value="#### Kitchen" verticalAlign="center" />
        </Header>
        <Body>
          <EditableText
            id="editableText1"
            editIcon="bold/interface-edit-write-1"
            inputTooltip="`Enter` to save, `Esc` to cancel"
            label="Name"
            placeholder="Enter name product"
          >
            <Event
              enabled="{{name}}"
              event="change"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="query1"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
          </EditableText>
          <EditableText
            id="editableText2"
            editIcon="bold/interface-edit-write-1"
            inputTooltip="`Enter` to save, `Esc` to cancel"
            label="Description"
            placeholder="Enter description"
          />
          <EditableText
            id="editableText3"
            editIcon="bold/interface-edit-write-1"
            inputTooltip="`Enter` to save, `Esc` to cancel"
            label="contact"
            placeholder="Enter contact"
          />
          <EditableText
            id="editableText4"
            editIcon="bold/interface-edit-write-1"
            inputTooltip="`Enter` to save, `Esc` to cancel"
            label="Prize"
            placeholder="Enter value"
          />
        </Body>
        <Footer>
          <Button
            id="formButton1"
            styleVariant="solid"
            submit={true}
            submitTargetId="form1"
            text="Submit"
          />
        </Footer>
        <Event
          event="submit"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="query1"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Form>
    </Modal>
    <Container id="collapsibleContainer3" showBody={true} showHeader={true}>
      <Header>
        <Text
          id="collapsibleTitle3"
          value="#### Container title"
          verticalAlign="center"
        />
        <ToggleButton
          id="collapsibleToggle3"
          horizontalAlign="right"
          iconForFalse="bold/interface-arrows-button-down"
          iconForTrue="bold/interface-arrows-button-up"
          iconPosition="replace"
          styleVariant="outline"
          text="{{ self.value ? 'Hide' : 'Show' }}"
          value="{{ collapsibleContainer3.showBody }}"
        >
          <Event
            event="change"
            method="setShowBody"
            params={{ ordered: [{ showBody: "{{ self.value }}" }] }}
            pluginId="collapsibleContainer3"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </ToggleButton>
      </Header>
      <View id="86945" viewKey="View 1" />
    </Container>
    <Container id="collapsibleContainer2" showBody={true} showHeader={true}>
      <Header>
        <Text
          id="collapsibleTitle2"
          value="#### Container title"
          verticalAlign="center"
        />
        <ToggleButton
          id="collapsibleToggle2"
          horizontalAlign="right"
          iconForFalse="bold/interface-arrows-button-down"
          iconForTrue="bold/interface-arrows-button-up"
          iconPosition="replace"
          styleVariant="outline"
          text="{{ self.value ? 'Hide' : 'Show' }}"
          value="{{ collapsibleContainer2.showBody }}"
        >
          <Event
            event="change"
            method="setShowBody"
            params={{ ordered: [{ showBody: "{{ self.value }}" }] }}
            pluginId="collapsibleContainer2"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </ToggleButton>
      </Header>
      <View id="86945" viewKey="View 1" />
    </Container>
    <Container id="collapsibleContainer1" showBody={true} showHeader={true}>
      <Header>
        <Text
          id="collapsibleTitle1"
          value="#### Container title"
          verticalAlign="center"
        />
        <ToggleButton
          id="collapsibleToggle1"
          horizontalAlign="right"
          iconForFalse="bold/interface-arrows-button-down"
          iconForTrue="bold/interface-arrows-button-up"
          iconPosition="replace"
          styleVariant="outline"
          text="{{ self.value ? 'Hide' : 'Show' }}"
          value="{{ collapsibleContainer1.showBody }}"
        >
          <Event
            event="change"
            method="setShowBody"
            params={{ ordered: [{ showBody: "{{ self.value }}" }] }}
            pluginId="collapsibleContainer1"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </ToggleButton>
      </Header>
      <View id="86945" viewKey="View 1" />
    </Container>
  </Frame>
</App>
