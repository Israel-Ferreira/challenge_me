import React, { Fragment } from "react";
import { Card, Content } from "react-bulma-components";

const Challenge = (props) => {
  const {obj} = props;
  return (
    <Fragment>
      <Card className="challenge-card">
        <Card.Header>
          <Card.Header.Title>{obj.title}</Card.Header.Title>
        </Card.Header>
        <Card.Content>
          <Content>{obj.description}</Content>
        </Card.Content>
      </Card>
    </Fragment>
  );
};

export default Challenge;
