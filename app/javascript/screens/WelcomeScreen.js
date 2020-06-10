import React, { Fragment } from "react";
import { Button, Columns, Heading } from "react-bulma-components";
import styled from "styled-components";

import SectionWrapper from "../components/shared/SectionWrapper";

const MainHeading = styled(Heading)`
  margin-top: 50px;
`;

const ButtonSubscribe = styled(Button)`
  border-width: 2px;
  margin-top: 30px;
`;



const WelcomeScreen = () => {
  return (
    <Fragment>
      <SectionWrapper>
        <Columns>
          <Columns.Column>
            <MainHeading
              className="has-text-weight-light has-text-centered has-text-danger"
              size={1}
            >
              Challenge <span className="has-text-danger">Me</span>
            </MainHeading>
          </Columns.Column>
        </Columns>
        <Columns className="is-centered is-mobile has-text-danger">
          <p>Aprenda programação com desafios de forma gratuita</p>
        </Columns>
        <Columns className="has-text-centered">
          <Columns.Column>
            <a href="/users/sign_up">
              <ButtonSubscribe className="is-danger is-outlined  has-text-white">
                CADASTRAR AGORA
              </ButtonSubscribe>
            </a>
          </Columns.Column>
        </Columns>
      </SectionWrapper>
    </Fragment>
  );
};

export default WelcomeScreen;
