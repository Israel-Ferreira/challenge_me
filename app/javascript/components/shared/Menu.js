import React, { Fragment } from "react";
import { Navbar, Container, Columns, Button } from "react-bulma-components";
import styled from "styled-components";
import NavbarButton from './NavbarButton'

const ColumnsFullWidth = styled(Columns)`
  width: 100%;
  padding-top: 20px;
  padding-left: 10px;
  padding-bottom: 10px;
  padding-right: 10px;
`;

const Menu = (props) => {
  return (
    <Fragment>
      <Navbar color="danger">
        <Container>
          <ColumnsFullWidth className="is-mobile">
            <Columns.Column desktop={{ size: 2 }} mobile={{ size: 5 }}>
              ChallengeMe
            </Columns.Column>
            <Columns.Column desktop={{ size: 10 }} mobile={{ size: 5 }}>
              <NavbarButton />
            </Columns.Column>
          </ColumnsFullWidth>
        </Container>
      </Navbar>
    </Fragment>
  );
};

export default Menu;
